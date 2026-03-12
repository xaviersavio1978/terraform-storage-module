terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.63"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "fph" # replace me
    workspaces {
      name = "prod_310" # your Terraform Cloud workspace name
    }
  }
}

provider "azurerm" {
  features {}
}

module "storage_account" {
  source = "../module/azure_storage_account"

  storage_account_name     = var.storage_account_1.name
  resource_group_name      = var.storage_account_1.resource_group_name
  location                 = var.storage_account_1.location
  account_tier             = var.storage_account_1.account_tier
  account_replication_type = var.storage_account_1.account_replication_type
  tags                     = var.storage_account_1.tags
}

module "storage_account_secondary" {
  source = "../module/azure_storage_account"

  storage_account_name     = var.storage_account_2.name
  resource_group_name      = var.storage_account_2.resource_group_name
  location                 = var.storage_account_2.location
  account_tier             = var.storage_account_2.account_tier
  account_replication_type = var.storage_account_2.account_replication_type
  tags                     = var.storage_account_2.tags
}
