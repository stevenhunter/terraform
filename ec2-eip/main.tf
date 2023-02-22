provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "myec2" {
  ami = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro"
}

resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.eip.id
}

resource "aws_security_group" "sg" {
  name = "sg1"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.eip.public_ip}/32"]
  }
}

output "myec2" {
  value = aws_instance.myec2
}