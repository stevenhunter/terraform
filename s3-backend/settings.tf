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
    key    = "project1/terraform.tfstate"
    region = "eu-west-2"
  }
}