# criar azure policy  definition com rule para bloear a criação de VM com IP publico

provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "example" {
  name         = "only-deploy-in-westeurope"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Allowed resource types"

  policy_rule = <<POLICY_RULE
 {
    "if": {
      "not": {
        "field": "location",
        "equals": "westeurope"
      }
    },
    "then": {
      "effect": "Deny"
    }
  }
POLICY_RULE
}
/*
resource "azurerm_policy_definition" "wfj_policy_definition" {
  name         = "wfj-block-public-ip"
  display_name = "wfj Block Public IP"
  description  = "Policy to block public IP on VMs"
  policy_type  = "Custom"
  mode         = "All"

  metadata = <<METADATA
  {
    "category": "wfj foundation",
    "version": "1.0.0"
  }
  METADATA

  policy_rule = <<POLICY_RULE
  {
    "if": {
      "allOf": [
        {
          "field": "type",
          "equals": "Microsoft.Compute/virtualMachines"
        },
        {
          "not": {
            "field": "Microsoft.Compute/virtualMachines/networkProfile/networkInterfaces/ipConfigurations/publicIpAddress/id",
            "exists": "true"
          }
        }
      ]
    },
    "then": {
      "effect": "deny"
    }
  }
  POLICY_RULE
}
*/
