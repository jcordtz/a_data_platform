#===============================================================================
# Terraform Variables Configuration
# 
# This file contains all variable values for the medallion architecture
# data platform deployment. Modify these values according to your environment.
#
# Layer Deployment:
# Set enable_<layer>_layer = false to skip deployment of specific layers.
# This allows flexible deployment for different environments or use cases.
#===============================================================================

#-------------------------------------------------------------------------------
# Project Configuration
#-------------------------------------------------------------------------------

# Name of the data platform project (used in resource naming)
# Must be lowercase alphanumeric, max 10 characters
project_name = "dataplatform"

# Deployment environment: dev, test, staging, or prod
environment = "dev"

#-------------------------------------------------------------------------------
# Azure Region Configuration
#-------------------------------------------------------------------------------

# Azure region for resource deployment
location = "francecentral"

# Short code for Azure region (used in storage account naming)
# Must be 2-4 lowercase letters
location_short = "frc"

#-------------------------------------------------------------------------------
# Storage Configuration
#-------------------------------------------------------------------------------

# Storage account tier: Standard or Premium
storage_tier = "Standard"

# Storage replication type: LRS, GRS, RAGRS, ZRS, GZRS, or RAGZRS
storage_replication_type = "LRS"

#-------------------------------------------------------------------------------
# Resource Tags
#-------------------------------------------------------------------------------

# Common tags applied to all resources
tags = {
  ManagedBy    = "Terraform"
  Architecture = "Medallion"
  Project      = "Data Platform"
  CostCenter   = "IT"
  Owner        = "Data Engineering Team"
}

#-------------------------------------------------------------------------------
# Microsoft Fabric Configuration
#-------------------------------------------------------------------------------

# List of admin user principal names (UPNs) for Microsoft Fabric capacity
# Example: ["admin@contoso.com", "dataadmin@contoso.com"]
fabric_capacity_admins = []

#-------------------------------------------------------------------------------
# Azure Synapse Configuration
#-------------------------------------------------------------------------------

# SQL administrator username for Synapse workspaces
synapse_sql_admin_username = "sqladmin"

# SQL administrator password for Synapse workspaces
# IMPORTANT: Change this password and consider using Azure Key Vault for production
synapse_sql_admin_password = "ChangeMe123!"

#-------------------------------------------------------------------------------
# Medallion Layer Deployment Configuration
#-------------------------------------------------------------------------------

# Enable deployment of the Bronze (raw/ingest) layer
# Includes: Resource Group, Data Lake Storage, Synapse Workspace
enable_bronze_layer = true

# Enable deployment of the Silver (transform) layer
# Includes: Resource Group, Data Lake Storage, Synapse Workspace
enable_silver_layer = true

# Enable deployment of the Gold (publish) layer
# Includes: Resource Group, Data Lake Storage
enable_gold_layer = true

# Enable deployment of the Consume (reporting) layer
# Includes: Resource Group, Data Lake Storage, Microsoft Fabric Capacity
enable_consume_layer = true
