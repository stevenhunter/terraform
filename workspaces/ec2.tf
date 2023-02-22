/* switch workspaces using:
 terraform workspace select dev
 terraform workspace select prd
*/

variable "instance_type_map" {
  type = map(any)
  default = {
    "default" = "t2.nano"
    "dev" = "t2.micro"
    "prd" = "t2.small"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = lookup(var.instance_type_map, terraform.workspace)
}