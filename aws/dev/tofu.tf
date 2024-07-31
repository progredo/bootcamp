terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "gcs" {
    bucket = "bootcamp-infra-tf-state"
    prefix = "progredo/bootcamp/aws/dev"
  }
}

provider "aws" {
  profile = "bc-dev"
  region  = "us-east-1"
}
