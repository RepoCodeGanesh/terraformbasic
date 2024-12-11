variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg2"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "client_secret" { 
description = "The client secret for the service principal"
type = string
sensitive = true 
}

variable "tags" {
description = "A map of tags to assign to the resource group"
type = map(string) 
default = {
Environment = "tag1"
Dept = "tag2"
 } 
}
