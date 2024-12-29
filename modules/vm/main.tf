resource "azurerm_network_interface" "nic" {
  count                = var.vm_count
  name                 = "nic-${var.resource_group_name}-${count.index}"
  location             = var.resource_group_location
  resource_group_name  = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_ids[count.index]  # Use the passed subnet IDs
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm" {
  count                 = var.vm_count
  name                  = "vm-${var.resource_group_name}-${count.index}"
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.nic[count.index].id]
  vm_size               = var.vm_size

  os_profile {
    computer_name  = "hostname-${count.index}"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {}

  storage_os_disk {
    name              = "osdisk-${var.resource_group_name}-${count.index}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter-Core"
    version   = "latest"
  }

  tags = var.tags
  # depends_on = [module.network] # Explicitly depend on the network module
}
