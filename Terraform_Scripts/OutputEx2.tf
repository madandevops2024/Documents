resource "aws_instance" "MyAwsInstance" {
  ami           = "ami-0be0a52ed3f231c12"
  instance_type = "t2.micro"

  tags = {
    Name = "DB-Server"
  }
}

output "instance-ami" {
    value =  aws_instance.MyAwsInstance.ami
}

output "instance-arn" {
    value =  aws_instance.MyAwsInstance.arn
    sensitive = true
}

output "instance-state" {
    value =  aws_instance.MyAwsInstance.instance_state
}

output "instance-core-count" {
    value =  aws_instance.MyAwsInstance.cpu_core_count
}