resource "aws_eip" "eip1" {
  vpc = true
  provider = aws.london
}

resource "aws_eip" "eip2" {
  vpc = true
  provider = aws.nvirginia
}