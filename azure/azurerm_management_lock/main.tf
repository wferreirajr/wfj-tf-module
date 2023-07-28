# modules/azurerm_management_lock/main.tf

resource "azurerm_management_lock" "lock" {
  name       = var.name
  scope      = [for id in var.scope : azurerm_resource_group.rg[id].id]  # Usando a função azurerm_resource_group para obter os objetos dos Resource Groups a partir dos IDs
  lock_level = var.lock_level
  notes      = var.note
}
