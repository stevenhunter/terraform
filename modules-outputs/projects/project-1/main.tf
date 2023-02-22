module "sg-module" {
  source = "../../modules/sg"
}

resource "aws_instance" "my-ec2" {
  ami                    = "ami-09ee0944866c73f62"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sg-module.sg_id]
}

output "sg_id_output" {
  value = module.sg-module.sg_id
}