# main.tf

resource "azurerm_subscription" "wfj-add-subscription" {
  count = var.add_subscription ? 1 : 0
  alias             = var.alias
  subscription_name = var.subscription_name
  subscription_id   = var.subscription_id
}

/*
data "azurerm_billing_enrollment_account_scope" "wfj-data-billing" {
  billing_account_name    = "1234567890"
  enrollment_account_name = "0123456"
}

resource "azurerm_subscription" "wfj-create-subscription" {
  subscription_name = "My Example EA Subscription"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.wfj-data-billing.id
}
*/