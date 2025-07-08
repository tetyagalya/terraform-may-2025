resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer2"
}

resource "aws_iam_user" "lb3" {
  name = "kaizen"
}

resource "aws_iam_group" "kaizen" {
  name = "devops"
}

resource "aws_iam_group_membership" "team" { #travel to resource, gets 2 names and added to group
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name
  ]

  group = aws_iam_group.kaizen.name
}