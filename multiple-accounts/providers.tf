provider "aws" {
  alias   = "account1"
  region  = "eu-west-2"
  profile = "default"
}

provider "aws" {
  alias   = "account2"
  region  = "eu-west-2"
  profile = "test"
}