variable "storage_account_name" {
  description = "Storage account name (must be globally unique, 3-24 lowercase alphanumeric)."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Resource Group."
  type        = string
}

variable "location" {
  description = "Azure location for the storage account."
  type        = string
}

variable "account_tier" {
  description = "Storage account tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type (LRS, GRS, RAGRS, ZRS)."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for the storage account."
  type        = map(string)
  default     = {}
}
