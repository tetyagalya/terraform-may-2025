locals {
  common_tags = {
    Name = "Hello-${var.region}"
    Environment = "Dev"
    Team = "DevOps"
  }
}