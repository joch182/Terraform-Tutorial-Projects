terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "terraform-tester"
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"

  tags = {
    Name = "App-Server"
  }
}