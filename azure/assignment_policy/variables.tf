# variables.tf

variable "apply_assignment_policy" {
  description = "Flag to create the Azure Assignment Policy"
  type        = bool
  default     = false
}

variable "assignment_policy_name" {
  type        = string
  description = "Name for policy"
  default     = ""
}

variable "assignment_policy_display_name" {
  type        = string
  description = "Name for policy"
  default     = ""
}

variable "assignment_policy_description" {
  type        = string
  description = "Name for policy"
  default     = ""
}

variable "assignment_policy_definition_id" {
  type        = string
  description = "Name for policy"
  default     = ""
}

variable "assignment_policy_subscription_id" {
  type        = string
  description = "Name for policy"
  default     = ""
}
