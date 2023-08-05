// agora escreva a parte do codigo para criar o arquivo de variables.tf

variable "stg_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "account_replication_type" {
  type = string
}

variable "additional_tags" {
  type = map(any)
}