#===============================================================================
# Terraform Variables Configuration
# 
# This file contains all variable values for the medallion architecture
# data platform deployment. Modify these values according to your environment.
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
