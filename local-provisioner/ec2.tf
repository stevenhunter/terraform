resource "aws_instance" "my-ec2-instance" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.my-ec2-instance.private_ip} >> ip.txt"
  }
}
