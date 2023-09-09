resource "aws_instance" "my-wish-i-can-decide" {
  ami             = var.ami_id #devops-practice in us-east-1
  instance_type   = var.instance_type
  security_groups = [aws_security_group.allow_all.name]

  # tags = {
  #     Name = "MongoDB"
  #     Environment = "DEV"
  #     Terraform = "true"
  #     Project = "Roboshop"
  #     Component = "MongoDB"
  # }

  tags = var.tags
}