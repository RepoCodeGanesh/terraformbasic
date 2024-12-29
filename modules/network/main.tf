resource "azurerm_virtual_network" "vnet" {
  count               = length(var.address_space_name)
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  name                = var.address_space_name[count.index]
  address_space       = [var.address_spaces[count.index]]
}

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_names)
  resource_group_name  = var.resource_group_name
  name                 = var.subnet_names[count.index]
  virtual_network_name = azurerm_virtual_network.vnet[count.index].name
  address_prefix       = var.subnet_prefixes[count.index]
}
