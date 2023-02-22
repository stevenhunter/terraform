resource "aws_eip" "eip1" {
  vpc      = true
  provider = aws.account1
}

resource "aws_eip" "eip2" {
  vpc      = true
  provider = aws.account2
}