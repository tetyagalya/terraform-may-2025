resource "aws_instance" "web" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main3.id 
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")


  tags = {
    Name = "HelloWorld"
  }
}

output hello {
    value = aws_instance.web.public_ip
}