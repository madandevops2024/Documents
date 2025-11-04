
variable "ImagesList" {
    type = list
    default = ["ami-001843b876406202a" , "ami-007020fd9c84e18c7", "ami-059aa0510020f477b" ]
}


variable "TagNames" {   
    type = list 
    default =  ["DEV", "SIT", "PROD"]
}

variable "InstanceTypes" {   
    type = string 
    default =  "t2.micro"
}

resource "aws_instance" "amzn-web" {
  ami           =   var.ImagesList[count.index]              
  instance_type = var.InstanceType

  count = 3

  tags = {
    Name = var.TagNames[count.index]
  }
}


