# provider "aws" {
# }

# resource "aws_eip" "eip" {
#   vpc = true
#   depends_on = [
#     null_resource.health_check    
#   ]
# }

# resource "null_resource" "health_check" {
  
#   provisioner "local-exec" {
#     command = "curl https://www.googleasdf34sfg.com"
#   }
# }