provider "aws" {
  region = "eu-west-2"
}

resource "aws_iam_user" "user" {
  name  = "iamuser.${count.index}"
  count = 3
  path  = "/system/"
}


# output "arns" {
#   value = aws_iam_user.user[*].arn
# }

# output "name" {
#   value = aws_iam_user.user[*].name
# }


#use zipmap function to map user names to arns in output
output "results" {
  value = zipmap(aws_iam_user.user[*].name, aws_iam_user.user[*].arn)
}