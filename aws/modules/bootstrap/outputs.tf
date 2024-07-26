output "iam_user_name" {
  description = "The user's name"
  value       = try(aws_iam_user.this[0].name, "")
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = try(aws_iam_user.this[0].unique_id, "")
}

output "iam_user_login_profile_password" {
  description = "The user password"
  value       = lookup(try(aws_iam_user_login_profile.this[0], {}), "password", sensitive(""))
  sensitive   = true
}
