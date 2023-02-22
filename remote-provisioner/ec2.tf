resource "aws_instance" "my-ec2-instance" {
  ami             = "ami-09ee0944866c73f62"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.security-group-ssh.name}"]
  key_name        = aws_key_pair.ssh-keypair.key_name

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = tls_private_key.pk.private_key_pem
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install nginx1 -y",
      "sudo systemctl start nginx"
    ]
  }
}
