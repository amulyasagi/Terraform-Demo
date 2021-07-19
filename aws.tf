provider "aws" {
  region     = "us-east-1"
  profile = "aws-keys"
}

resource "aws_instance" "web" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}