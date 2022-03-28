terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "my-first-server" {
  ami = "ami-0801a1e12f4a9ccc0"
  instance_type = "t2.micro"
  tags = {
    Name = "Ubuntu"
  }
}
