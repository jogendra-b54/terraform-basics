resource "aws_instance" "app" {
  ami           = "ami-01337809c40300dde"
  instance_type = "t3.nano"

  tags = {
    Name = "terraformServer"
  }
} 

