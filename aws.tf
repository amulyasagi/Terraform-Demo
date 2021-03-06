provider "aws" {
  region     = "us-east-1"
  profile = "aws-keys"
}

resource "aws_instance" "web" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  key_name = "KP-Test"
  vpc_security_group_ids = [aws_security_group.SG_New.id]

  tags = {
    Name = "Hello"
	Environment = "Dev"
  }
}