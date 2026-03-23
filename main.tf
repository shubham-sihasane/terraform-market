# Terraform settings block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.37.0" # Terraform~AWS provider version
    }
  }
  required_version = "1.14.7" # Terraform version
}

# Terraform provider block
provider "aws" {
  profile = "default" # AWS credentials profile configured on your local machine
  region = "ap-south-1"
}

# Resource block
resource "aws_instance" "webserver" {
  ami = "ami-05d2d839d4f73aafb" # Ubuntu image in ap-south-1
  instance_type = "t2.nano"
  tags = {
    Name = "WebServer"
    Environment = "Development"
  }
}