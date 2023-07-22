data "aws_ami" "image" {
  most_recent      = true

  #name_regex = "Jogendra-learning-image"

  name_regex= "DevOps-LabImage-CentOS7"

  # you can also give any public image 
  # name_regex = "DevOps-LabImage-Centos7"
  #owners =  ["self"]   # self because the AMI is created as visibilty =private

    #owners = ["355449129"]

  }
