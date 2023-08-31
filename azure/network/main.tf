# main.tf

resource "azurerm_virtual_network" "wfj-vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_servers = var.dns_servers
      
  subnet {
    name           = var.subnet_name
    address_prefix = var.subnet_cidr
  }

  tags = merge(
    var.additional_tags,
    {
      manager-by = "iac"
    }
  )
}
