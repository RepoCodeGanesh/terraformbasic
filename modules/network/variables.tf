variable "resource_group_name" {
  type        = string
  default     = "RGDeafult"
  description = "Location of the resource group."
}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "address_spaces" {
  description = "The address spaces for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16", "10.2.0.0/16"]
}

variable "address_space_name" {
  description = "The address space names for the virtual network"
  type        = list(string)
  default     = ["Vnet1", "Vnet2"]
}

variable "subnet_prefixes" {
  description = "The subnet prefixes for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "subnet_names" {
  description = "The names of the subnets"
  type        = list(string)
  default     = ["subnet1", "subnet2", "subnet3"]
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}
