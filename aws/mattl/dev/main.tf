data "aws_caller_identity" "this" {}
/*
module "bootstrap" {
  source = "../modules/bootstrap/"
  users  = var.aws_users
}
*/

module "s3build" {
  source = "../modules/s3build/"

}

module "iamrole" {
  source = "../modules/iamrole/"
}
