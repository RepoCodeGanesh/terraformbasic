resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
  tags     = var.tags
}

module "network" {
  source                  = "./modules/network"
  resource_group_name     = var.resource_group_name
  location                = var.resource_group_location
  depends_on = [azurerm_resource_group.rg]
}

# module "vm" {
#   source                  = "./modules/vm"
#   resource_group_name     = azurerm_resource_group.rg.name
#   resource_group_location = var.resource_group_location
#   vm_count                = var.vm_count
#   vm_size                 = var.vm_size
#   admin_username          = var.admin_username
#   admin_password          = var.admin_password
#   subnet_ids              = module.network.subnet_ids  # Pass the output from the network module
#   tags                    = var.tags
# }
