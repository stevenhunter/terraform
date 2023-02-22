provider "aws" {
}

resource "aws_eip" "eip" {
  vpc = true
  count = 3
}

resource "null_resource" "ip_check" {
  
  #changing the count above causes the trigger to react and the provisioner to be re-run
  triggers = {
    latest_ips = join(",", aws_eip.eip[*].public_ip)
  }
  
  provisioner "local-exec" {
    command = "echo Latest IPs are ${null_resource.ip_check.triggers.latest_ips} > sample.txt"
  }
}