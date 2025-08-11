provider aws {
  region = var.region
}

module vpc {
    source = "../vpc"
    vpc_cidr = "10.0.0.0/16"
    subnet1_cidr = "10.0.1.0/24"
    environment = "prod"
    region = var.region
}

module ec2 {
    source = "../ec2"
    ami_id = "ami-0169aa51f6faf20d5"
    instance_type = "t2.micro"
    subnet_id = module.vpc.subnet
    region = var.region
}

variable region {
    default = "us-east-2"
}