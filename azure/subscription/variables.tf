# variables.tf

variable "add_subscription" {
  type        = bool
  default     = false
  description = "variavel para incluir a subscription para ser gerenciada pelo terraform"
}

variable "alias" {
  type        = string
  description = "Alias para a subsscription"
}

variable "subscription_name" {
  type        = string
  description = "Nome da subscription"
}

variable "subscription_id" {
  type        = string
  description = "ID da subscription"
}

variable "additional_tags" {
  type = map(any)
}