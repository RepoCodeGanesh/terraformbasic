resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
  tags     = var.tags
}

module "network" {
  source                  = "./modules/network"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  address_space_name      = var.address_space_name
  address_spaces          = var.address_spaces
  subnet_names            = var.subnet_names
  subnet_prefixes         = var.subnet_prefixes
}

module "vm" {
  source                  = "./modules/vm"
  resource_group_name     = azurerm_resource_group.rg.name
  resource_group_location = var.resource_group_location
  vm_count                = var.vm_count
  vm_size                 = var.vm_size
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  subnet_ids              = module.network.subnet_ids  # Pass the output from the network module
  tags                    = var.tags
}
