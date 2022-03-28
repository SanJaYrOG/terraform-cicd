terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  AWS_ACCESS_KEY_ID = "AWS_ACCESS_KEY_ID"
  AWS_SECRET_ACCESS_KEY = "AWS_SECRET_ACCESS_KEY"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
