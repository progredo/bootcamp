output "aws_users" {
  description = "The list of aws users that have been created."
  value       = [for user in aws_iam_user.this : user.name]
}
