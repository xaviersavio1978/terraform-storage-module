resource "azurerm_storage_account" "storage1" {
  name                     = "xaviersavio1978"
  resource_group_name      = "rg-prod-310"
  location                 = "australiaeast"

  account_tier             = "Standard"
  account_replication_type = "LRS"
}