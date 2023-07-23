data "aws_ami" "image" {
  most_recent      = true

  #name_regex = "Jogendra-learning-image"

  name_regex= "ansible-lab-image"

  # you can also give any public image 
  # name_regex = "DevOps-LabImage-Centos7"
  #owners =  ["self"]   # self because the AMI is created as visibilty =private

    owners = ["self"]

  }
