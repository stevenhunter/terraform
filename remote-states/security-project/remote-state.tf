# retrieves a terraform remote state from s3 using config
data "terraform_remote_state" "network-project" {
  backend = "s3"

  config = {
    bucket = "terraform-220223"
    key    = "network-project/network-project.tfstate"
    region = "eu-west-2"
    }
  }