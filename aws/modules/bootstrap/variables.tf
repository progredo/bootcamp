variable "users" {
  type = list(string)
}

variable "password_length" {
  description = "The length of the generated password"
  type        = number
  default     = 20
}
