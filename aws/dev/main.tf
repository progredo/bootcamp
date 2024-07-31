data "aws_caller_identity" "this" {}

module "bootstrap" {
  source = "../modules/bootstrap/"
  users  = var.aws_users
}
