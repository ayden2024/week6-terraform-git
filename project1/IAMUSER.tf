

resource "aws_iam_group" "developers" {
  name = "CloudTeam"

}

resource "aws_iam_user" "lb" {
  name = "u5bt2023"
}

resource "aws_iam_user_group_membership" "example1" {
  user = aws_iam_user.lb.name

  groups = [
    aws_iam_group.developers.name,
  ]
}