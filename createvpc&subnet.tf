provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}
resource "aws_vpc" "my_vpc" {
  cidr_block       = ("-----------")   # Change this to your desired CIDR block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = ("-----------") # Change this to your desired subnet CIDR block
  availability_zone = "us-east-1a"   # Change this to your desired availability zone
  tags = {
    Name = "my-subnet"
  }
}
