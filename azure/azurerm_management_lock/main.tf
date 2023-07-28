# modules/azurerm_management_lock/main.tf

locals {
  resource_group_scopes = [for id in var.scope : "/subscriptions/35a89c93-cf4c-47cf-a4b0-c1db8f4241d2/resourceGroups/${id}"]
}

resource "azurerm_management_lock" "lock" {
  name       = var.name
  scope      = local.resource_group_scopes  # Usando a variável local como valor para "scope"
  lock_level = var.lock_level
  notes      = var.note
}
