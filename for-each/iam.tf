#using for_each with toset function to remove duplicates from list
resource "aws_iam_user" "user" {
  for_each = toset(["user-01", "user-02", "user-03", "user-01"])
  name     = each.key
  path     = "/system/"
}
