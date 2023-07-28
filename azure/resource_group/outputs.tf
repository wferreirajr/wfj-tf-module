# outputs.tf

output "resource_group_id" {
  value = [for rg in azurerm_resource_group.rg : rg.id]
}

/*
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.rg.location
}
*/