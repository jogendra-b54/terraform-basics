
resource "aws_instance" "sample" {

   ami           =  data.aws_ami.image.id
   instance_type = "t3.micro"
    vpc_security_group_ids = [var.sg]
    
   

}

variable "sg" {}   # step 3: now to use this infor, declare an empty variable and use it (in root module , we have declared "sg=var.sgid")


output "public_ip" {
  value = aws_instance.sample.public_ip
}



