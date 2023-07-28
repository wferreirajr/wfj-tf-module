# modules/azurerm_management_lock/main.tf

resource "azurerm_management_lock" "lock" {
  name       = var.name
  scope      = var.scope  # Usando a variável "scope" diretamente
  lock_level = var.lock_level
  notes      = var.note
}
