resource "aws_security_group" "allows_all" {
  name        = "allows_tls"
  description = "Allows TLS inbound traffic"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]     
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  } 

  tags = {
    Name = "allows_tls"
  }
}
#step 1 : Declaring the outout that we wish to pass to the root module
output "sgid" {
  
  value = aws_security_group.allows_all.id
}