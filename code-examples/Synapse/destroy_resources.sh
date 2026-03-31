#!/bin/bash
#===============================================================================
# Terraform Resource Destruction Script
# 
# This script removes all resources created by the medallion architecture
# Terraform configuration in the correct dependency order.
#
# Usage:
#   ./destroy_resources.sh [options]
#
# Options:
#   -a, --auto-approve    Skip confirmation prompts
#   -p, --plan-only       Show destruction plan without executing
#   -h, --help            Show this help message
#===============================================================================

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Default options
AUTO_APPROVE=""
PLAN_ONLY=false

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -a|--auto-approve)
            AUTO_APPROVE="-auto-approve"
            shift
            ;;
        -p|--plan-only)
            PLAN_ONLY=true
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [options]"
            echo ""
            echo "Options:"
            echo "  -a, --auto-approve    Skip confirmation prompts"
            echo "  -p, --plan-only       Show destruction plan without executing"
            echo "  -h, --help            Show this help message"
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            exit 1
            ;;
    esac
done

# Function to print section headers
print_header() {
    echo ""
    echo -e "${BLUE}===============================================================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}===============================================================================${NC}"
}

# Function to print status messages
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Function to print warnings
print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Function to print errors
print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Change to script directory
cd "$SCRIPT_DIR"

print_header "Medallion Architecture Resource Destruction"

# Check if Terraform is installed
if ! command -v terraform &> /dev/null; then
    print_error "Terraform is not installed. Please install Terraform first."
    exit 1
fi

# Check if Terraform has been initialized
if [ ! -d ".terraform" ]; then
    print_warning "Terraform not initialized. Running terraform init..."
    terraform init
fi

# Show destruction plan
print_header "Step 1: Generating Destruction Plan"
print_status "Analyzing resources to be destroyed..."

terraform plan -destroy -out=destroy.tfplan

if [ "$PLAN_ONLY" = true ]; then
    print_status "Plan-only mode. Exiting without destroying resources."
    rm -f destroy.tfplan
    exit 0
fi

# Confirmation prompt (if not auto-approve)
if [ -z "$AUTO_APPROVE" ]; then
    echo ""
    print_warning "This will destroy ALL resources in the following order:"
    echo ""
    echo "  1. Role Assignments (RBAC)"
    echo "     - Bronze Synapse Contributor"
    echo "     - Silver Synapse Bronze Reader"
    echo "     - Silver Synapse Silver Contributor"
    echo "     - Silver Synapse Gold Contributor"
    echo ""
    echo "  2. Microsoft Fabric Capacity (Consume Layer)"
    echo ""
    echo "  3. Synapse Firewall Rules"
    echo ""
    echo "  4. Azure Synapse Workspace (Silver Layer)"
    echo ""
    echo "  5. Azure Synapse Workspace (Bronze Layer)"
    echo ""
    echo "  6. Data Lake Gen2 Filesystems/Containers"
    echo "     - Bronze: raw, landing, archive"
    echo "     - Silver: cleansed, conformed, enriched"
    echo "     - Gold: analytics, curated, ml-features"
    echo "     - Consume: reports, dashboards, exports"
    echo ""
    echo "  7. Data Lake Gen2 Storage Accounts"
    echo "     - Bronze, Silver, Gold, Consume layers"
    echo ""
    echo "  8. Resource Groups"
    echo "     - Bronze, Silver, Gold, Consume layers"
    echo ""
    read -p "Are you sure you want to destroy all resources? (yes/no): " confirm
    if [ "$confirm" != "yes" ]; then
        print_status "Destruction cancelled."
        rm -f destroy.tfplan
        exit 0
    fi
fi

# Execute destruction using the saved plan
print_header "Step 2: Destroying Resources"
print_status "Executing destruction plan..."

terraform apply destroy.tfplan

# Clean up plan file
rm -f destroy.tfplan

print_header "Destruction Complete"
print_status "All medallion architecture resources have been destroyed."

#===============================================================================
# Alternative: Targeted Destruction (uncomment to use step-by-step approach)
#===============================================================================
# 
# If you need more control, you can destroy resources in targeted order:
#
# # Step 1: Destroy Role Assignments
# terraform destroy -target=azurerm_role_assignment.synapse_bronze_contributor $AUTO_APPROVE
# terraform destroy -target=azurerm_role_assignment.synapse_silver_bronze_reader $AUTO_APPROVE
# terraform destroy -target=azurerm_role_assignment.synapse_silver_contributor $AUTO_APPROVE
# terraform destroy -target=azurerm_role_assignment.synapse_silver_gold_contributor $AUTO_APPROVE
#
# # Step 2: Destroy Fabric Capacity
# terraform destroy -target=azurerm_fabric_capacity.consume $AUTO_APPROVE
#
# # Step 3: Destroy Synapse Firewall Rules
# terraform destroy -target=azurerm_synapse_firewall_rule.silver_allow_azure $AUTO_APPROVE
# terraform destroy -target=azurerm_synapse_firewall_rule.bronze_allow_azure $AUTO_APPROVE
#
# # Step 4: Destroy Silver Synapse Workspace
# terraform destroy -target=azurerm_synapse_workspace.silver $AUTO_APPROVE
#
# # Step 5: Destroy Bronze Synapse Workspace
# terraform destroy -target=azurerm_synapse_workspace.bronze $AUTO_APPROVE
#
# # Step 6: Destroy Data Lake Filesystems
# terraform destroy -target=azurerm_storage_data_lake_gen2_filesystem.containers $AUTO_APPROVE
#
# # Step 7: Destroy Storage Accounts
# terraform destroy -target=azurerm_storage_account.datalake $AUTO_APPROVE
#
# # Step 8: Destroy Resource Groups
# terraform destroy -target=azurerm_resource_group.medallion $AUTO_APPROVE
#
#===============================================================================
