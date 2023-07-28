variable "name" {
  type        = string
  description = ""
  default     = ""
}

variable "scope" {
  type        = list(string)
  description = "The scope of the management lock. It should be a list of resource IDs."
}

variable "lock_level" {
  type        = string
  description = ""
  default     = ""
}

variable "note" {
  type        = string
  description = ""
  default     = ""
}