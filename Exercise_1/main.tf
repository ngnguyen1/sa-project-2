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
}

resource "aws_instance" "Udacity_T2" {
  ami           = "ami-051f7e7f6c2f40dc1"
  subnet_id     = "subnet-0522b4191bdb680f5"
  count         = "4"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

resource "aws_instance" "Udacity_M4" {
  ami           = "ami-051f7e7f6c2f40dc1"
  subnet_id     = "subnet-0522b4191bdb680f5"
  instance_type = "m4.large"
  count         = 2
  tags = {
    Name = "Udacity M4"
  }
}