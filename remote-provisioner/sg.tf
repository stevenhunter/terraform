resource "aws_security_group" "security-group-ssh" {
  name = "ssh-sg"
  dynamic "ingress" {
    for_each = toset([22, 80])
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}