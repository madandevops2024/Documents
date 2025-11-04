/*variable "AmazonLinuxImage" {   
    type = string 
    default =  "ami-001843b876406202a"  
}

variable "UbuntuImage" {   
    type = string 
    default =  "ami-007020fd9c84e18c7"  
}*/

variable "ImagesList" {
    type = list
    default = ["ami-001843b876406202a" , "ami-007020fd9c84e18c7" ]
}

variable "TagName" {   
    type = list 
    default =  ["FedExApp", "Database"]
}

variable "InstanceType" {   
    type = string 
    default =  "t2.micro"
}

resource "aws_instance" "amzn-web" {
  ami           =   var.ImagesList[0]              
  instance_type = var.InstanceType

  tags = {
    Name = var.TagName[0]
  }
}

resource "aws_instance" "ubuntu-web" {
  ami           =   var.ImagesList[1]              
  instance_type = var.InstanceType

  tags = {
    Name = var.TagName[1]
  }
}
