# main.tf

resource "azurerm_resource_group" "rg" {
  for_each = { for cfg in var.resource_group_configs : cfg.name => cfg }

  name     = each.value.name
  location = each.value.location

  tags = merge(
    var.additional_tags,
    {
      manager-by = "iac"
    }
  )

}
