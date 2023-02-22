provider "aws" {
  region = "eu-west-2"
  profile = "test2"
  assume_role {
    role_arn = "arn:aws:iam::515428216134:role/terraform"
    session_name = "terraform-session"
  }
}
