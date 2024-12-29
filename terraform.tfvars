resource_group_location      = "centralindia"
resource_group_name          = "Gmail"
admin_username               = "adminuser"
admin_password               = "AdminPassword123!"
vm_size               = "Standard_B1ls"
vm_os                 = "Windows2019DatacenterCore"
hostname              = "VM"
vm_count              = 4

address_space_name      = ["Vnet1", "Vnet2"]
address_spaces          = ["10.0.0.0/16", "10.2.0.0/16"]
subnet_names            = ["subnet1", "subnet2", "subnet3", "subnet4"]
subnet_prefixes         = ["10.0.1.0/24", "10.0.2.0/24", "10.2.1.0/24", "10.2.2.0/24"]

tags = {
  Environment = "dev"
  Dept        = "financial"
}
