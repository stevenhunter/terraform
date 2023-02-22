resource "aws_instance" "myec2" {
  ami = "ami-0aaa5410833273cfe"
  instance_type = var.instance_sizes["small"]
  count = 3

  tags = {
    "name" = "ec2-instance-${count.index + 1}"
    "odd" = "${count.index % 2 == 0}" ? "true" : "false"
  }
}