provider "aws" {
  region     = "ap-south-1"
  access_key = "Enter Access Key"
  secret_key = "Enter Secret Key"
}

resource "aws_instance" "web" {
  ami           = "ami-001843b876406202a"                   
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}