terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.55.0"
    }
  }

  backend "s3" {
    bucket = "terraform-220223"
    key    = "project1/project1.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-lock"
  }
}