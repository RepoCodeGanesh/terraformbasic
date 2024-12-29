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
output "vnet_ids" {
  description = "The IDs of the VNets"
  value       = module.network.vnet_ids
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.network.subnet_ids
}
