variable "usernames" {
  description = "List of IAM usernames to create."
  type        = list(string)
}

variable "create_user" {
  description = "Whether to create the IAM user"
  type        = bool
  default     = true
}

variable "name" {
  description = "Desired name for the IAM user"
  type        = string
}

variable "path" {
  description = "Desired path for the IAM user"
  type        = string
  default     = "/"
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "create_iam_user_login_profile" {
  description = "Whether to create IAM user login profile"
  type        = bool
  default     = true
}

variable "password_length" {
  description = "The length of the generated password"
  type        = number
  default     = 20
}

variable "password_reset_required" {
  description = "Whether the user should be forced to reset the generated password on first login."
  type        = bool
  default     = true
}

