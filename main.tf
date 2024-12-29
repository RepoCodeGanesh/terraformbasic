# resource "random_pet" "rg_name" {
#   prefix = var.resource_group_name_prefix
# }

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
  tags     = var.tags
}

module "network" {
  source                  = "./modules/network"
  resource_group_name     = var.resource_group_name
  location                = var.resource_group_location
  address_space_name      = var.address_space_name
  address_spaces          = var.address_spaces
  subnet_names            = var.subnet_names
  subnet_prefixes         = var.subnet_prefixes
}

module "vm" {
  source                = "./modules/vm"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.resource_group_location
  hostname              = var.hostname
  vm_size               = var.vm_size
  vm_os                 = var.vm_os
  vm_count              = var.vm_count
  subnet_id             = modules.network.subnet_ids[count.index]
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  tags                  = var.tags
}

