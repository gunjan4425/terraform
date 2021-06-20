provider "aws" {
  access_key = "AKIA25B6PRM5LTTNUM4G"
  secret_key = ""
  region     = "us-east-2"
}

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-05692172625678b4e"
  instance_type = "t2.micro"
}
