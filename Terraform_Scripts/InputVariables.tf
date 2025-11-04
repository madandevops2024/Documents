variable "ImagesList" {
    type = list
    default = ["ami-0f5ee92e2d63afc18", "ami-03cb1380eec7cc118"]
}

variable "instanceTypes" {
    type = list
    default = ["t2.micro", "t2.micro"]
}

variable "tagName" {
   type = list
   default = ["DEV", "SIT"]
}

variable "TotalInstances" {   
   type = number 
}

resource "aws_instance" "DB-Server2" {
  ami           = var.ImagesList[count.index]
  instance_type = var.instanceTypes[count.index]

  count = var.TotalInstances >= 3 ? 3 : var.TotalInstances

  tags = {
    Name = var.tagName[count.index]
  }
}