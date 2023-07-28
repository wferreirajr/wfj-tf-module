locals {
  resource_group_scopes = [for id in var.scope : "/subscriptions/35a89c93-cf4c-47cf-a4b0-c1db8f4241d2/resourceGroups/${id}"]
}

resource "azurerm_management_lock" "lock" {
  name       = var.name

  // Use a variável local "resource_group_scopes" em vez de "var.scope"
  scope      = local.resource_group_scopes

  lock_level = var.lock_level
  notes      = var.note
}