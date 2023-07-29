// como criar um modulo para criacao do recurso azurerm_storage_account
// ja estou nno arquivo main.tf, entao qual o codigo que eu preciso para criar o recurso?

resource "azurerm_storage_account" "storage" {
  name                     = "${var.stg_name}${random_id.storage_id.hex}"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

    // como fazer para que a tag seja feito merge com outras tags que o usuario queira adicionar?

    tags = merge(
        var.additional_tags,
        {
        manager-by = "iac"
        }
    )
}
