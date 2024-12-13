output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "Vm_Name" {
  value = module.vm.Vm_Name
}

output "VmIP" {
  value = module.vm.vm_private_ip
}

output "vm_username"{
  value = module.vm.Vm_password
}