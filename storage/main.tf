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

  storage_account_name     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}

module "storage_account_secondary" {
  source = "../module/azure_storage_account"

  storage_account_name     = var.storage_account_name_secondary
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = merge(var.tags, { name = "iac-terraform-storage-secondary" })
}
