output "vnet_ids" {
  description = "The IDs of the VNets"
  value       = module.network.vnet_ids
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.network.subnet_ids
}
