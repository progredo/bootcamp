resource "aws_iam_user" "terraform" {
  name = "terraform"
}

resource "aws_iam_user" "this" {
  name = var.name
}

resource "aws_iam_user_login_profile" "this" {
  user                    = aws_iam_user.this.name
  password_length         = var.password_length

  # TODO: Remove once https://github.com/hashicorp/terraform-provider-aws/issues/23567 is resolved
  lifecycle {
    ignore_changes = [password_reset_required]
  }
}

