resource "aws_instance" "MyAwsInstance" {
  ami           = "ami-0be0a52ed3f231c12"
  instance_type = "t2.micro"

  tags = {
    Name = "DB-Server"
  }
}

output "instance-info" {
    value =  aws_instance.MyAwsInstance
}