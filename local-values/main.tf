locals {
  common_tags = {
    Owner = "DevOps Team"
    Service = "Backend"
  }
}

resource "aws_instance" "app-dev" {
  ami = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro"
  tags = local.common_tags
}
 
resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "eu-west-2a"
  size = 8
  tags = local.common_tags
}
