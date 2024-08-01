resource "aws_iam_user" "terraform" {
  name = "terraform"
}

resource "aws_iam_user" "this" {
  for_each = toset(var.users)
  name     = each.value
}

resource "aws_iam_user_login_profile" "this" {
  for_each                = toset(var.users)
  user                    = aws_iam_user.this[each.key].name
  password_length         = var.password_length
  password_reset_required = true

  # TODO: Remove once https://github.com/hashicorp/terraform-provider-aws/issues/23567 is resolved
  lifecycle {
    ignore_changes = [password_reset_required]
  }
}

resource "aws_iam_group_membership" "this" {
  name = "admin"
  users = [
    for user in aws_iam_user.this : user.name
  ]

  group = "admin-access"
}
