resource "aws_instance" "remote-app" {
  ami           = "ami-0c1d144c8fdd8d690"
  instance_type = "t3.nano"

  tags = {
    Name = "Linux_Server_With_Remote_Backend"
  }
} 

