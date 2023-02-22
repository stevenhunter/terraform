module "my-ec2" {
  source        = "../../modules/ec2"
  instance_type = "t3.nano"
}