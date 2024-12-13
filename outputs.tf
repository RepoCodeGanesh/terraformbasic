output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "Vm_Name" {
  value = module.vm.Vm_Name
}

output "VmIP" {
  value = module.vm.vm_private_ip
}

output "vm_admin_username" {
description = "The admin username for the VM"
  value = var.admin_username 
}

output "vm_admin_password" {
description = "The admin password for the VM"
    value = var.admin_password
    sensitive = true 
}