storage_account_name            = "myunixavsavacct001"
storage_account_name_secondary  = "myunixavsavacct002"
resource_group_name             = "rg-prod-310"
location                        = "eastus"
account_tier                    = "Standard"
account_replication_type        = "LRS"
tags = {
  environment = "prod"
  owner       = "xavier"
  name        = "iac-terraform-storage"
  project     = "terraform-storage-module"
  cost_center = "310"
}
