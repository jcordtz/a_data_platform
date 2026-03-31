#===============================================================================
# Terraform Configuration for Azure Medallion Architecture Data Platform
# 
# This configuration creates Azure resources following the medallion architecture:
# - Bronze (Raw/Ingest): Landing zone for raw data from source systems
# - Silver (Transform): Cleansed, conformed, and integrated data
# - Gold (Publish): Business-ready, analytics-optimized data products
#
# Resources created:
# - Resource Groups per medallion layer
# - Azure Data Lake Gen2 Storage Accounts per medallion layer
#
# Naming Convention follows Azure CAF standards:
# - Resource Groups: rg-<workload>-<layer>-<environment>-<region>
# - Storage Accounts: st<workload><layer><env><region><instance>
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
  default     = "westeurope"
}

variable "location_short" {
  description = "Short code for Azure region (used in storage account naming)"
  type        = string
  default     = "weu"

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
      containers  = ["analytics", "reporting", "ml-features"]
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
  shared_access_key_enabled       = true
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

output "naming_summary" {
  description = "Summary of naming convention used"
  value = {
    pattern = {
      resource_groups  = "rg-<project>-<layer>-<environment>-<region>"
      storage_accounts = "st<project><layer><env><region>"
    }
    examples = {
      bronze_rg      = azurerm_resource_group.medallion["bronze"].name
      bronze_storage = azurerm_storage_account.datalake["bronze"].name
    }
  }
}
