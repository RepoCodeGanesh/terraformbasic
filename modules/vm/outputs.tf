output "Vm_Name" {
  value = azurerm_virtual_machine.vm.name
}

output "Vm_password" {
  value = azurerm_virtual_machine.vm.admin_username
}

output "vm_private_ip" {
  description = "The private IP address of the VM"
  value       = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}