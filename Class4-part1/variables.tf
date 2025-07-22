variable region {
  default = "us-east-1"
  type = string
  description = "Provide region"
}

variable key_name {
  default ="my-key"
  type = string
  description = "Provide key name"
}

variable port {
  default = [22, 80]
  type = list(number)
  description = "Provide port"
}

variable ec2_web {
  default = {
    ami_id = "ami-0150ccaf51ab55a51"
    type = "t2.micro"
    subnet = "subnet-0d04e8ea2a1c5e588"
  }
  type = map(string)
  }