locals {
    common_tag = {
        Name = "Singapore-Project"
        Owner = "Raj Kumar"
    }
}

resource "aws_instance" "SingaporeProj" {
  ami           = "ami-0be0a52ed3f231c12"
  instance_type = "t2.micro"

  tags = local.common_tag
}