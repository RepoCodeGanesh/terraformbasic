output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "Vm_Name" {
  value = module.vm.vm_names
}

output "vm_ids" {
  value = module.vm.vm_ids
}

output "VmIP" {
  value = module.vm.vm_private_ips
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

output "subnet_ids" {
  value = azurerm_subnet.subnet[*].id
}
