variable "ami_id" {
  type    = string                  # this is the data type
  default = "ami-03265a0778a880afb" # this is the default value
}

variable "instance_type" {
  #type = string
  default = "t2.micro"
}

variable "sg_name" {
  default = "allow-all"
}

variable "sg_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "MongoDB1"
    Environment = "DEV"
    Terraform   = "true"
    Project     = "Roboshop"
    Component   = "MongoDB"
  }
}

variable "aws_region" {
  default = "us-east-1"
}