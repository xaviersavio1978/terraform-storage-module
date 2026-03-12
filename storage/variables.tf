variable "storage_account_name" {
  description = "Storage account name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "account_tier" {
  description = "Standard/Premium" 
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
