output "vnet_ids" {
  description = "The IDs of the VNets"
  value       = module.network.vnet.*.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.network.subnet.*.id
}
