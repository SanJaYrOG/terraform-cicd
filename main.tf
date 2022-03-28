terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region     = "ap-southeast-1"
}

resource "aws_instance" "my-first-server" {
  ami = "ami-055d15d9cfddf7bd3"
  instance_type = "t2.micro"
  tags = {
    Name = "Ubuntu"
  }
}
