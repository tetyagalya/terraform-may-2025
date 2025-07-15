data "aws_vpc" "selected" {
    filter {
      name = "tag:Name"
      values = [ "hello" ]
    }
}

resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}