# variables.tf

variable "vm_name" {
  description = "Virtual Machine Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vm_size" {
  description = "Virtual Machine Size"
  type        = string
}

variable "img_publisher" {
  description = "Image Publisher"
  type        = string
}

variable "img_offer" {
  description = "Image Offer"
  type        = string
}

variable "img_sku" {
  description = "Image SKU"
  type        = string
}

variable "img_version" {
  description = "Image Version"
  type        = string
}

variable "disk_type" {
  description = "Disk Type"
  type        = string
}

variable "additional_tags" {
  description = "Additional Tags"
  type        = map(string)
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "resource_group_name_vnet" {
  description = "Resource Group Name Vnet"
  type        = string
}

