terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.63"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fph"
    workspaces {
      name = "prod_310-rg"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../module/azure_resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}
