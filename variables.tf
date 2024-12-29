variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "RGDeafult"
  description = "Location of the resource group."
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 2
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

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string) 
  default = {
    Environment = "tag1"
    Dept        = "tag2"
  } 
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
variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "vm_os" {
  description = "OS version for the VM"
  type        = string
}

variable "hostname" {
  description = "name for vm"
  type = string
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
} 

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}
