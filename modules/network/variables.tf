variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}

variable "address_space_name" {
  description = "The names of the virtual network address spaces"
  type        = list(string)
}

variable "address_spaces" {
  description = "The address spaces for the virtual network"
  type        = list(string)
}

variable "subnet_names" {
  description = "The names of the subnets"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "The subnet prefixes for the subnets"
  type        = list(string)
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}
