resource "aws_instance" "myec2" {
  ami = "ami-0aaa5410833273cfe"
  instance_type = var.instance_sizes["small"]
}