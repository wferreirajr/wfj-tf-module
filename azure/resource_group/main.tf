# main.tf

resource "azurerm_resource_group" "rg" {

  count = var.apply_rg ? 1 : 0

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
