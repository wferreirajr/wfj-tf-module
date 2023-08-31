# main.tf

resource "azurerm_virtual_network" "wfj-vnet" {
  name                = var.vnet_name
  address_space       = [ var.vnet_cidr ]
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_servers = var.dns_servers == "" ? null : var.dns_servers

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value.name == "" ? null : subnet.value.name
      address_prefix = subnet.value.address_prefix == "" ? null : subnet.value.address_prefix
    }
  }

  tags = merge(
    var.additional_tags,
    {
      manager-by = "iac"
    }
  )
}
