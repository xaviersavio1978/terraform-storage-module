storage_account_name          = "myuniquestorageacct001"
resource_group_name         = "rg-prod-310"
location                    = "eastus"
account_tier                = "Standard"
account_replication_type    = "LRS"
tags = {
  environment = "prod"
  owner       = "xavier"
}
