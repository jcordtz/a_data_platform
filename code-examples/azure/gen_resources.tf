#===============================================================================
# Terraform Configuration for Azure Medallion Architecture Data Platform
# 
# This configuration creates Azure resources following the medallion architecture:
# - Bronze (Raw/Ingest): Landing zone for raw data from source systems
# - Silver (Transform): Cleansed, conformed, and integrated data
# - Gold (Publish): Business-ready, analytics-optimized data products
# - Consume: Reports, dashboards, and end-user data products
#
# Resources created:
# - Resource Groups per medallion layer including the consume layer
# - Azure Data Lake Gen2 Storage Accounts per medallion layer
# - Azure Data Factory for bronze layer data ingestion
# - Azure Databricks Workspace for silver layer transformation
# - Microsoft Fabric Capacity for consume layer reporting and analytics
# - Role assignments for Databricks access to bronze (read), silver (read/write), gold (read/write)
#
# Security:
# - Bronze, Silver, and Gold layers enforce managed identity authentication (shared access keys disabled)
# - Consume layer allows shared access keys for end-user/reporting flexibility
# - Data Factory uses system-assigned managed identity for bronze layer access
# - Databricks uses managed identity for data lake access across layers
#
# Naming Convention follows Azure CAF standards:
# - Resource Groups: rg-<workload>-<layer>-<environment>-<region>
# - Storage Accounts: st<workload><layer><env><region>
# - Data Factory: adf-<workload>-<layer>-<environment>-<region>
# - Databricks Workspace: dbw-<workload>-<layer>-<environment>-<region>
# - Fabric Capacity: fc-<workload>-<layer>-<environment>-<region>
#===============================================================================

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

#-------------------------------------------------------------------------------
# Variables
#-------------------------------------------------------------------------------

variable "project_name" {
  description = "Name of the data platform project (used in resource naming)"
  type        = string
  default     = "dataplatform"

  validation {
    condition     = can(regex("^[a-z0-9]+$", var.project_name)) && length(var.project_name) <= 10
    error_message = "Project name must be lowercase alphanumeric and max 10 characters."
  }
}

variable "environment" {
  description = "Deployment environment (dev, test, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, staging, prod."
  }
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "francecentral"
}

variable "location_short" {
  description = "Short code for Azure region (used in storage account naming)"
  type        = string
  default     = "frc"

  validation {
    condition     = can(regex("^[a-z]{2,4}$", var.location_short))
    error_message = "Location short code must be 2-4 lowercase letters."
  }
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    ManagedBy   = "Terraform"
    Architecture = "Medallion"
  }
}

variable "storage_replication_type" {
  description = "Storage replication type (LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS)"
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.storage_replication_type)
    error_message = "Invalid storage replication type."
  }
}

variable "storage_tier" {
  description = "Storage account tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "fabric_capacity_admins" {
  description = "List of admin user principal names (UPNs) for Microsoft Fabric capacity"
  type        = list(string)
  default     = []
}

#-------------------------------------------------------------------------------
# Local Variables
#-------------------------------------------------------------------------------

locals {
  # Environment short codes for naming
  env_short = {
    dev     = "d"
    test    = "t"
    staging = "s"
    prod    = "p"
  }

  # Medallion layers configuration
  medallion_layers = {
    bronze = {
      name        = "bronze"
      short       = "brz"
      description = "Raw data ingestion layer - landing zone for source system data"
      containers  = ["raw", "landing", "archive"]
    }
    silver = {
      name        = "silver"
      short       = "slv"
      description = "Transform layer - cleansed, conformed, and integrated data"
      containers  = ["cleansed", "conformed", "enriched"]
    }
    gold = {
      name        = "gold"
      short       = "gld"
      description = "Publish layer - business-ready analytics and data products"
      containers  = ["analytics", "curated", "ml-features"]
    }
    consume = {
      name        = "consume"
      short       = "csm"
      description = "Consumption layer - reports, dashboards, and end-user data products"
      containers  = ["reports", "dashboards", "exports"]
    }
  }

  # Common tags with environment and project info
  common_tags = merge(var.tags, {
    Environment = var.environment
    Project     = var.project_name
  })
}

#-------------------------------------------------------------------------------
# Resource Groups - One per Medallion Layer
#-------------------------------------------------------------------------------

resource "azurerm_resource_group" "medallion" {
  for_each = local.medallion_layers

  name     = "rg-${var.project_name}-${each.value.name}-${var.environment}-${var.location_short}"
  location = var.location

  tags = merge(local.common_tags, {
    Layer       = each.value.name
    Description = each.value.description
  })
}

#-------------------------------------------------------------------------------
# Azure Data Lake Gen2 Storage Accounts - One per Medallion Layer
#-------------------------------------------------------------------------------

resource "azurerm_storage_account" "datalake" {
  for_each = local.medallion_layers

  # Storage account naming: st<project><layer><env><region>
  # Max 24 chars, lowercase, alphanumeric only
  name                = "st${var.project_name}${each.value.short}${local.env_short[var.environment]}${var.location_short}"
  resource_group_name = azurerm_resource_group.medallion[each.key].name
  location            = azurerm_resource_group.medallion[each.key].location

  account_tier             = var.storage_tier
  account_replication_type = var.storage_replication_type
  account_kind             = "StorageV2"

  # Enable hierarchical namespace for Data Lake Gen2
  is_hns_enabled = true

  # Security settings
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
  # Only consume layer allows shared access keys for end-user/reporting flexibility
  # Bronze, silver, and gold layers enforce managed identity authentication
  shared_access_key_enabled       = each.key == "consume" ? true : false
  public_network_access_enabled   = true # Set to false for private endpoints

  # Blob properties
  blob_properties {
    versioning_enabled       = true
    change_feed_enabled      = true
    last_access_time_enabled = true

    delete_retention_policy {
      days = 7
    }

    container_delete_retention_policy {
      days = 7
    }
  }

  # Network rules (default: allow all, customize for production)
  network_rules {
    default_action = "Allow"
    bypass         = ["AzureServices"]
  }

  tags = merge(local.common_tags, {
    Layer       = each.value.name
    Description = each.value.description
    DataLake    = "Gen2"
  })
}

#-------------------------------------------------------------------------------
# Data Lake Containers/Filesystems - Predefined per Layer
#-------------------------------------------------------------------------------

resource "azurerm_storage_data_lake_gen2_filesystem" "containers" {
  for_each = {
    for item in flatten([
      for layer_key, layer in local.medallion_layers : [
        for container in layer.containers : {
          key       = "${layer_key}-${container}"
          layer_key = layer_key
          container = container
        }
      ]
    ]) : item.key => item
  }

  name               = each.value.container
  storage_account_id = azurerm_storage_account.datalake[each.value.layer_key].id

  properties = {
    layer = local.medallion_layers[each.value.layer_key].name
  }
}

#-------------------------------------------------------------------------------
# Azure Data Factory - Bronze Layer (Data Ingestion)
#-------------------------------------------------------------------------------

resource "azurerm_data_factory" "bronze" {
  name                = "adf-${var.project_name}-bronze-${var.environment}-${var.location_short}"
  resource_group_name = azurerm_resource_group.medallion["bronze"].name
  location            = azurerm_resource_group.medallion["bronze"].location

  # Enable managed virtual network for secure data movement
  managed_virtual_network_enabled = true

  # Enable system-assigned managed identity (required for bronze layer access)
  identity {
    type = "SystemAssigned"
  }

  # Public network access (set to false for private endpoints in production)
  public_network_enabled = true

  tags = merge(local.common_tags, {
    Layer       = "bronze"
    Description = "Data Factory for data ingestion into bronze layer"
    Purpose     = "ETL/ELT Orchestration"
  })
}

# Data Factory read/write access to Bronze layer via managed identity (Storage Blob Data Contributor)
# Bronze layer has shared access keys disabled, requiring managed identity authentication
resource "azurerm_role_assignment" "adf_bronze_contributor" {
  scope                = azurerm_storage_account.datalake["bronze"].id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_data_factory.bronze.identity[0].principal_id
}

#-------------------------------------------------------------------------------
# Azure Databricks Workspace - Silver Layer (Data Transformation)
#-------------------------------------------------------------------------------

resource "azurerm_databricks_workspace" "silver" {
  name                = "dbw-${var.project_name}-silver-${var.environment}-${var.location_short}"
  resource_group_name = azurerm_resource_group.medallion["silver"].name
  location            = azurerm_resource_group.medallion["silver"].location
  sku                 = "premium"

  # Managed resource group for Databricks-managed resources
  managed_resource_group_name = "rg-${var.project_name}-dbw-managed-${var.environment}-${var.location_short}"

  # Public network access (set to false for private link in production)
  public_network_access_enabled = true

  # Custom parameters for workspace configuration
  custom_parameters {
    no_public_ip                                         = false # Set to true for enhanced security
    public_subnet_network_security_group_association_id  = null
    private_subnet_network_security_group_association_id = null
    storage_account_name                                 = null  # Let Databricks create its own DBFS storage
  }

  tags = merge(local.common_tags, {
    Layer       = "silver"
    Description = "Databricks workspace for data transformation"
    Purpose     = "Data Engineering and Processing"
  })
}

#-------------------------------------------------------------------------------
# Role Assignments - Databricks Access to Data Lake Storage (Managed Identity)
# Note: Bronze, Silver, and Gold layers require managed identity auth (shared keys disabled)
#-------------------------------------------------------------------------------

# Databricks read access to Bronze layer via managed identity (Storage Blob Data Reader)
resource "azurerm_role_assignment" "databricks_bronze_reader" {
  scope                = azurerm_storage_account.datalake["bronze"].id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azurerm_databricks_workspace.silver.storage_account_identity[0].principal_id
}

# Databricks read/write access to Silver layer via managed identity (Storage Blob Data Contributor)
resource "azurerm_role_assignment" "databricks_silver_contributor" {
  scope                = azurerm_storage_account.datalake["silver"].id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_databricks_workspace.silver.storage_account_identity[0].principal_id
}

# Databricks read/write access to Gold layer via managed identity (Storage Blob Data Contributor)
resource "azurerm_role_assignment" "databricks_gold_contributor" {
  scope                = azurerm_storage_account.datalake["gold"].id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_databricks_workspace.silver.storage_account_identity[0].principal_id
}

#-------------------------------------------------------------------------------
# Microsoft Fabric Capacity - Consume Layer (Reporting & Analytics)
#-------------------------------------------------------------------------------

resource "azurerm_fabric_capacity" "consume" {
  name                = "fc-${var.project_name}-consume-${var.environment}-${var.location_short}"
  resource_group_name = azurerm_resource_group.medallion["consume"].name
  location            = azurerm_resource_group.medallion["consume"].location

  sku {
    name = "F8"
    tier = "Fabric"
  }

  administration_members = var.fabric_capacity_admins

  tags = merge(local.common_tags, {
    Layer       = "consume"
    Description = "Microsoft Fabric capacity for reporting and analytics"
    Purpose     = "BI and Reporting"
  })
}

#-------------------------------------------------------------------------------
# Outputs
#-------------------------------------------------------------------------------

output "resource_groups" {
  description = "Resource group details for each medallion layer"
  value = {
    for key, rg in azurerm_resource_group.medallion : key => {
      name     = rg.name
      id       = rg.id
      location = rg.location
    }
  }
}

output "storage_accounts" {
  description = "Data Lake Gen2 storage account details for each medallion layer"
  value = {
    for key, sa in azurerm_storage_account.datalake : key => {
      name                  = sa.name
      id                    = sa.id
      primary_dfs_endpoint  = sa.primary_dfs_endpoint
      primary_blob_endpoint = sa.primary_blob_endpoint
    }
  }
}

output "datalake_filesystems" {
  description = "Data Lake Gen2 filesystem (container) details"
  value = {
    for key, fs in azurerm_storage_data_lake_gen2_filesystem.containers : key => {
      name               = fs.name
      storage_account_id = fs.storage_account_id
    }
  }
}

output "data_factory" {
  description = "Azure Data Factory details for bronze layer ingestion"
  value = {
    name               = azurerm_data_factory.bronze.name
    id                 = azurerm_data_factory.bronze.id
    identity_id        = azurerm_data_factory.bronze.identity[0].principal_id
    bronze_role        = azurerm_role_assignment.adf_bronze_contributor.role_definition_name
  }
}

output "databricks_workspace" {
  description = "Azure Databricks workspace details for silver layer transformation"
  value = {
    name                       = azurerm_databricks_workspace.silver.name
    id                         = azurerm_databricks_workspace.silver.id
    workspace_url              = azurerm_databricks_workspace.silver.workspace_url
    managed_resource_group_id  = azurerm_databricks_workspace.silver.managed_resource_group_id
    storage_account_identity   = azurerm_databricks_workspace.silver.storage_account_identity[0].principal_id
  }
}

output "databricks_role_assignments" {
  description = "Role assignments for Databricks access to data lake layers"
  value = {
    bronze_reader      = azurerm_role_assignment.databricks_bronze_reader.role_definition_name
    silver_contributor = azurerm_role_assignment.databricks_silver_contributor.role_definition_name
    gold_contributor   = azurerm_role_assignment.databricks_gold_contributor.role_definition_name
  }
}

output "fabric_capacity" {
  description = "Microsoft Fabric capacity details for consume layer"
  value = {
    name     = azurerm_fabric_capacity.consume.name
    id       = azurerm_fabric_capacity.consume.id
    sku      = azurerm_fabric_capacity.consume.sku[0].name
    location = azurerm_fabric_capacity.consume.location
  }
}

output "naming_summary" {
  description = "Summary of naming convention used"
  value = {
    pattern = {
      resource_groups      = "rg-<project>-<layer>-<environment>-<region>"
      storage_accounts     = "st<project><layer><env><region>"
      data_factory         = "adf-<project>-<layer>-<environment>-<region>"
      databricks_workspace = "dbw-<project>-<layer>-<environment>-<region>"
      fabric_capacity      = "fc-<project>-<layer>-<environment>-<region>"
    }
    examples = {
      bronze_rg      = azurerm_resource_group.medallion["bronze"].name
      bronze_storage = azurerm_storage_account.datalake["bronze"].name
      bronze_adf     = azurerm_data_factory.bronze.name
      silver_dbw     = azurerm_databricks_workspace.silver.name
      consume_fabric = azurerm_fabric_capacity.consume.name
    }
  }
}
