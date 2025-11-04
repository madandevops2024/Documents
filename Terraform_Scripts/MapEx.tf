variable "ImagesList" {
    type = list
    default = ["ami-0f5ee92e2d63afc18", "ami-012b9156f755804f5", "ami-0ce4c5d21b8e0de83"]
}

variable "instanceTypes" {
    type = map
    default = {
        "dev" = "t2.micro"
        "test" = "t2.micro"
        "prod" = "t2.micro"
    }
}

variable "tagName" {
   type = map
   default = {
        "dev" = "DevServer"
        "test" = "SIT"
        "key3" = "PROD"
    }
}

resource "aws_instance" "DB-Server1" {
  ami           = var.ImagesList[2]
  instance_type = var.instanceTypes["test"]

  tags = {
    Name = var.tagName["dev"]
  }
}