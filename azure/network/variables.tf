# variables.tf

variable "vnet_name" {
  type = string
}

variable "vnet_cidr" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_name" {
  type = string
  default = ""
}

variable "subnet_cidr" {
  type = string
  default = ""
}

variable "dns_servers" {
  type = list(string)
  default = [ "" ]
}

variable "additional_tags" {
  type = map(string)
}

