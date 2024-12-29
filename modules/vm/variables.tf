variable "resource_group_name" {
  type        = string
  default     = "RGDeafult"
  description = "Location of the resource group."
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
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

variable "hostname" {
  description = "name for vm"
  type = string
}
