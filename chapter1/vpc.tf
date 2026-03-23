# Resource Block - VPC
resource "aws_vpc" "happy-vpc" {
  provider = aws.aws-us-east-1
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Happy VPC"
    ENvironment = "Development"
  }
}