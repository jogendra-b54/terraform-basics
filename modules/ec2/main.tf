
resource "aws_instance" "sample" {
  
   ami           = "ami-0c1d144c8fdd8d690"
   instance_type = "t3.micro"
    vpc_security_group_ids = [var.sg]
    
   

}

variable "sg" {}   # step 3: now to use this infor, declare an empty variable and use it (in root module , we have declared "sg=var.sgid")


output "public_ip" {
  value = aws_instance.sample.public_ip
}