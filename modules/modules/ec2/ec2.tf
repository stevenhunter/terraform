resource "aws_instance" "my-ec2-instance" {
  ami             = "ami-09ee0944866c73f62"
  instance_type   = "t3.nano"
  security_groups = ["default"] 
  key_name = "steven-ssh"
}
