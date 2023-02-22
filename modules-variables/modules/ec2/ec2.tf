resource "aws_instance" "my-ec2-instance" {
  ami             = "ami-09ee0944866c73f62"
  instance_type   = var.instance_type
  security_groups = ["default"]
  key_name        = "steven-ssh"
}
