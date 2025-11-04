resource "aws_instance" "web_instance" {
  ami           = "ami-001843b876406202a"
  instance_type = "t2.micro"

  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.public_sg_id]
  associate_public_ip_address = true

  user_data       = file("./installHttpd.sh")

  tags = {
    "Name" : "Server"
  }
}