provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "superno_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "superno_subnet" {
  vpc_id            = aws_vpc.superno_vpc.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_instance" "app_instance" {
  ami           = "ami-0c02fb55956c7d316" 
  instance_type = "t3.medium"

  subnet_id = aws_subnet.superno_subnet.id

  tags = {
    Name = "SuperNoApp"
  }
}
