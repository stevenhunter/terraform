resource "aws_instance" "my-ec2-instance" {
  ami             = "ami-09ee0944866c73f62"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.security-group-ssh.name}"]
  key_name        = "steven-ssh"

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nano"
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo yum -y remove nano"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./steven-ssh.pem")
    host        = self.public_ip
  }
}
