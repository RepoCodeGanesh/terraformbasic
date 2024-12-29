variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "vnet_address_spaces" {
  description = "List of VNet address spaces"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "List of subnet prefixes"
  type        = list(string)
}
