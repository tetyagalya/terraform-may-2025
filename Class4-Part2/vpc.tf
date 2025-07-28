resource "aws_vpc" "main" {
  cidr_block = var.vpc.cidr

  tags = {
    Name = var.vpc.name
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[0].cidr
  availability_zone = var.subnet[0].az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[0].name
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[1].cidr
  availability_zone = var.subnet[1] .az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[1].name
  }
}

resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet[2].cidr
  availability_zone = var.subnet[2].az
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet[2].name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "my-igw"
  }
}

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.example.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.main2.id
  route_table_id = aws_route_table.example.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.main3.id
  route_table_id = aws_route_table.example.id
}