variable region {
  type = string
  description = "Provide region"
}

variable key_name {
  type = string
  description = "Provide key name"
}

variable port {
  type = list(number)
  description = "Provide port"
}

variable ec2_web {
  type = map(string)
  }

  variable vpc {
    type = object({
    cidr = string
    name = string
    })
    default = {
      cidr = ""
      name = ""
    }
  }

  variable subnet {
    type = list(object({
      cidr = string
      az = string
      name = string 
    }))
    default = [ 
      {
      cidr = ""
      az = ""
      name = ""
    },
         {
      cidr = ""
      az = ""
      name = ""
    },
         {
      cidr = ""
      az = ""
      name = ""
    },
     ]
  }