# variables.tf

variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
}

variable "location" {
  description = "Location of the network security group"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "security_rules" {
  description = "List of security rules"
  type        = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "additional_tags" {
  type = map(string)
}
