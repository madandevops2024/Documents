variable "AmazonLinuxImage" {   
    type = string 
    default =  "ami-001843b876406202a"  
}

variable "UbuntuImage" {   
    type = string 
    default =  "ami-007020fd9c84e18c7"  
}

variable "TagName" {   
    type = string 
    default =  "FedExApp"
}

variable "InstanceType" {   
    type = string 
    default =  "t2.micro"
}

resource "aws_instance" "amzn-web" {
  ami           =   var.AmazonLinuxImage              
  instance_type = var.InstanceType

  tags = {
    Name = var.TagName
  }
}

resource "aws_instance" "ubuntu-web" {
  ami           =   var.UbuntuImage              
  instance_type = var.InstanceType

  tags = {
    Name = var.TagName
  }
}