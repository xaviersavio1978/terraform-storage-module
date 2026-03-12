variable "storage_account_1" {
  description = "Primary storage account configuration."
  type = object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  })
}

variable "storage_account_2" {
  description = "Secondary storage account configuration."
  type = object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  })
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
  default     = "rg-prod-310"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "eastus"
}

variable "account_tier" {  description = "Standard/Premium" 
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "LRS, ZRS, GRS, RAGRS" 
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Map of tags. ss"
  type        = map(string)
  default     = {}
}

