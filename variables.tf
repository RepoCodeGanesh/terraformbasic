variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg2"
  description = "Prefix of the resource group name that's combined with a random ID so the name is unique in your Azure subscription."
}

variable "client_secret" { 
  description = "The client secret for the service principal"
  type        = string
  sensitive   = true 
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = false
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string) 
  default = {
    Environment = "tag1"
    Dept        = "tag2"
  } 
}
