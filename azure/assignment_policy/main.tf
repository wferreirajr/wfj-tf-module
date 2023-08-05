# main.tf
resource "azurerm_subscription_policy_assignment" "assignment_policy" {

  name                 = var.assignment_policy_name
  display_name         = var.assignment_policy_display_name
  description          = "[manager-by: IaC] - ${var.assignment_policy_description}"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/${var.assignment_policy_definition_id}"
  subscription_id      = "/subscriptions/${var.assignment_policy_subscription_id}"

}