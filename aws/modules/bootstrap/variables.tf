
#keep
variable "name" {
  description = "Desired name for the IAM user"
  type        = string
}

#keep
variable "password_length" {
  description = "The length of the generated password"
  type        = number
  default     = 20
}
