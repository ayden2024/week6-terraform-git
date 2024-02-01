resource "aws_iam_group" "cloudteam" {
  name = "cloudteam"
  path = "/users/"
}
resource "aws_iam_user" "lb" {
  name = "u5bt2023"
}