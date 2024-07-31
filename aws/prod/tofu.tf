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
    prefix = "progredo/bootcamp/aws/prod"
  }
}

provider "aws" {
  profile = "bc-prod"
  region  = "us-east-1"
}
