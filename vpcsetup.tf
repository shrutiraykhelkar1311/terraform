provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.31.0.0/16"  # Replace with your desired CIDR block for the VPC

  tags = {
    Name = "MyVPC"
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = vpc-0584555ce793b601f

  tags = {
    Name = "MyIGW"
  }
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "172.31.0.0/16"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "MyRouteTable"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = vpc-0584555ce793b601f
  cidr_block = "172.31.0.0/16"  # Replace with your desired CIDR block for the subnet
  availability_zone = "us-east-1a"  # Replace with your desired availability zone

  tags = {
    Name = "MySubnet"
  }
}

resource "aws_route_table_association" "my_subnet_association" {
  subnet_id      = subnet-004abac391fdb8894
  route_table_id = rtb-018af5693a2f240b3
}
