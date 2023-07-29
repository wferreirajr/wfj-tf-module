// criar o codigo  para imprimir as saidas do modulo para o nome do storage account e o id do storage account

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}