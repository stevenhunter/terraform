resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh-keypair" {
  key_name   = "tf-ec2-key"
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" {
    command = <<-EOT
      echo '${tls_private_key.pk.private_key_pem}' > ./tf-ec2-key.pem
      chmod 400 ./tf-ec2-key.pem
    EOT
  }
}
