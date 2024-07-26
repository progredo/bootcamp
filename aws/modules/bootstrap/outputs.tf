output "name" {
  description = "The user's name"
  value       = try(aws_iam_user.this.name, "")
}

output "iam_id" {
  description = "The unique ID assigned by AWS"
  value       = try(aws_iam_user.this.unique_id, "")
}

output "password" {
  description = "The user password"
  value       = lookup(try(aws_iam_user_login_profile.this, {}), "password", sensitive(""))
  sensitive   = true
}
