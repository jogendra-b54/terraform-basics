# AWS EC2 SPOT INSTANCE
resource "aws_spot_instance_request" "spot_worker" {
  ami                    = data.aws_ami.image.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allows_all.id]
  wait_for_fulfillment = true

  tags = {
    Name = var.COMPONENT 
  }
  
# This will be executed  on the top of the machine once its created ....
 provisioner "remote-exec" {
  # connection block establishes connection to this 
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip      #aws_instance.sample.private_ip : use this only if your provisioner is outside the resourcee
  }
    inline = [
      "ansible-pull -U https://github.com/jogendra-b54/ansible.git -e ROOT_PASSWORD=RoboShop@1 -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} roboshop-pull.yml",
    ]
  }

} 

/*
resource "aws_instance" "sample" {

   ami           =  data.aws_ami.image.id
   instance_type = "t3.micro"
    vpc_security_group_ids = [var.sg]
    


# This will be executed  on the top of the machine once its created ....
 provisioner "remote-exec" {
  # connection block establishes connection to this 
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip      #aws_instance.sample.private_ip : use this only if your provisioner is outside the resourcee
  }
    inline = [
      "ansible-pull -U https://github.com/jogendra-b54/ansible.git -e ENV=dev -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} roboshop-pull.yml",
    ]
  }

}

variable "sg" {}   # step 3: now to use this infor, declare an empty variable and use it (in root module , we have declared "sg=var.sgid")


output "public_ip" {
  value = aws_instance.sample.public_ip
}

*/

