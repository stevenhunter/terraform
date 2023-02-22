resource "aws_eip" "eip" {
  vpc = true
}

output "eip_addr" {
  value = aws_eip.eip.public_ip
}