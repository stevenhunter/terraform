provider "aws" {
  region     = "eu-west-2"
}

variable "sg_ports" {
  type    = list(number)
  default = [80, 443, 22, 53]
}

resource "aws_security_group" "sg" {
  name = "sg1"
  
  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
