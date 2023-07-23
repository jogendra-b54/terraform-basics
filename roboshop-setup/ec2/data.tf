data "aws_ami" "image" {
  most_recent  = true
  name_regex = "ansible-lab-image"
  owners = ["self"]

  }
