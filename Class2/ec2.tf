resource "aws_instance" "web" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  #availability_zone = "us-east-1b"
subnet_id = "subnet-0d04e8ea2a1c5e588"
key_name = aws_key_pair.deployer.key_name
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}

output ec2 {
    value = aws_instance.web.public_ip 
}