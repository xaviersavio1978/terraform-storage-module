terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.90"
    }
  }
}

provider "azurerm" {
  features  {}
}

module "storage_account" {
  source = "../module/azure_storage_account"

  storage_account_name      = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  tags                      = var.tags
}
