variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "vm_os" {
  description = "OS version for the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
}

variable "random_pet_name" {
  description = "Random pet name"
  type        = string
}
