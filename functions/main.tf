provider "aws" {
  region     = "eu-west-2"
}

variable "region" {
  default = "eu-west-2"
}

variable "ami" {
  type = map(any)
  default = {
    "eu-west-1" = "ami-0aaa5410833273aaa"
    "eu-west-2" = "ami-0aaa5410833273cfe"
    "eu-west-3" = "ami-0aaa5410833273zzz"
  }
}

locals {
  #formatdate and timestamp functions
  time = formatdate("DD MMM YYYY hh:m ZZZ", timestamp())
}

resource "aws_instance" "myec2" {
  #lookup function
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"

}

resource "aws_key_pair" "ssh-key" {
  key_name = "ssh-key"
  #file function
  public_key = file("${path.module}/id_rsa.pub")
}

output "timestamp" {
  value = local.time
}