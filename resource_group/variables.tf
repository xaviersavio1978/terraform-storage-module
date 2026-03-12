variable "resource_group_name" {
  description = "Name of resource group to create."
  type        = string
}

variable "location" {
  description = "Azure region for resource group."
  type        = string
}

variable "tags" {
  description = "Optional tags for resource group."
  type        = map(string)
  default     = {
    environment = "prod"
    project     = "terraform-storage-module"
    owner       = "xavier"
  }
}
