resource "azurerm_virtual_network" "vnet" {
  count             = 2
  name              = "vnet${count.index + 1}"
  address_space     = ["10.${count.index + 1}.0.0/16"]
  location          = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  count                = 4
  name                 = "${element(["VM", "DB"], count.index % 2)}-subnet${count.index / 2 + 1}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element(azurerm_virtual_network.vnet.*.name, count.index / 2)
  address_prefixes     = ["10.${count.index / 2 + 1}.${count.index % 2 * 64}.0/18"]
}
