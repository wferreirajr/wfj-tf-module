# main.tf

data "azurerm_subnet" "wfj-subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name_vnet
}

resource "azurerm_network_interface" "wfj-nic" {
  name                = "${var.vm_name}-nic-1"
  location            = var.location
  resource_group_name = var.resource_group_name

  virtual_machine_id = azurerm_virtual_machine.wfj-vm.id

  ip_configuration {
    name                          = "${var.vm_name}-nic-1-ipconfig-1"
    subnet_id                     = azurerm_subnet.wfj-subnet.id
    private_ip_address_allocation = "Dynamic"
    primary                       = true
  }

  tags = merge(
    var.additional_tags,
    {
      manager-by = "iac"
    }
  )

}

resource "azurerm_virtual_machine" "wfj-vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [ azurerm_network_interface.wfj-nic.id ]
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.img_publisher
    offer     = var.img_offer
    sku       = var.img_sku
    version   = var.img_version
  }

  storage_os_disk {
    name              = "${var.vm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = var.disk_type
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = "wfjadmin"
    admin_password = "P@ssw0rd1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = merge(
    var.additional_tags,
    {
      manager-by = "iac"
    }
  )
}