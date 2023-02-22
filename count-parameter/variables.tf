variable "instance_sizes" {
  type = map
  default = {
    small = "t2.micro"
    medium = "t2.small"
    large = "t2.large"
  }
}