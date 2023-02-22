/* variable "usernumber" {
  type = number
} */

variable "elb_name" {
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}

variable "instance_sizes" {
  type = map
  default = {
    small = "t2.micro"
    medium = "t2.small"
    large = "t2.large"
  }
}