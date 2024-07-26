module "bootstrap" {
  source = "../modules/bootstrap/"
  name = "shawnb"
}

output "name" {
  value = module.bootstrap.name
}

output "password" {
  value = module.bootstrap.password
  sensitive = true
}
