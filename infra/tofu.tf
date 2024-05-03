terraform {
  required_version = ">= 1.7.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
  backend "gcs" {
    bucket = "bootcamp-infra-tf-state"
    prefix = "progredo/bootcamp/infra"
  }
}

provider "github" {
  owner = "progredo"
  token = sensitive(var.github_progredo_bootcamp_pat)
}
