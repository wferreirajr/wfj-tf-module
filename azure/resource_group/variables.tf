# variables.tf

variable "resource_group_configs" {
  description = "List of configurations for the Resource Groups"
  type = list(object({
    name     = string
    location = string
  }))

  validation {
    condition     = alltrue([for config in var.resource_group_configs : config.location == "eastus" || config.location == "brazilsouth"])
    error_message = "Invalid location. Only eastus and brazilsouth are allowed."
  }
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional tags for the Azure Resource Group"
  default     = {}
}
