resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}

variable ami_id {}
variable instance_type {}
variable subnet_id {}

provider aws {
  region = var.region
}

variable region {}

# data terraform_remote_state vpc {
#     backend = "local"
#     config = {
#       path = "../vpc/terraform.tfstate"
#     }
# }  
    
# output hello {
#   value = data.terraform_remote_state.vpc
# }
