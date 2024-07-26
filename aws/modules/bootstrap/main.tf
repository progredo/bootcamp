resource "aws_iam_user" "terraform" {
  name = "terraform"
}
resource "aws_iam_user" "this" {
  count = var.create_user ? 1 : 0

  name                 = var.name
  path                 = var.path

  tags = var.tags
}

resource "aws_iam_user_login_profile" "this" {
  count = var.create_user && var.create_iam_user_login_profile ? 1 : 0

  user                    = aws_iam_user.this[0].name
  password_length         = var.password_length
  password_reset_required = var.password_reset_required

  # TODO: Remove once https://github.com/hashicorp/terraform-provider-aws/issues/23567 is resolved
  lifecycle {
    ignore_changes = [password_reset_required]
  }
}

