output "vnet_ids" {
  description = "The IDs of the VNets"
  value       = azurerm_virtual_network.vnet.*.id
}

#output "subnet_ids" {
#  description = "The IDs of the subnets"
#  value       = azurerm_subnet.subnet.*.id
#}
