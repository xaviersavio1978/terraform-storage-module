storage_account_1 = {
  name                     = "myunixavsavacct001"
  resource_group_name      = "rg-prod-310"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "prod"
    owner       = "xavier"
    name        = "iac-terraform-storage-primary"
    project     = "terraform-storage-module"
    cost_center = "310"
  }
}

storage_account_2 = {
  name                     = "myunixavsavacct002"
  resource_group_name      = "rg-prod-310"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "prod"
    owner       = "xavier"
    name        = "iac-terraform-storage-secondary"
    project     = "terraform-storage-module"
    cost_center = "310"
  }
}
