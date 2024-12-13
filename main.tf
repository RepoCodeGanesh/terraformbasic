# resource "random_pet" "rg_name" {
#   prefix = var.resource_group_name_prefix
# }

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
  tags     = var.tags
}

module "vm" {
  source                = "./modules/vm"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.resource_group_location
  vm_size               = "Standard_B1ls"
  vm_os                 = "Windows2019DatacenterCore"
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  tags                  = var.tags
}
