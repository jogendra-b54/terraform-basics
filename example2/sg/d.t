# Mot this statefile is rmeote and this is what we use in a team based approach
terraform {
  backend "s3" {
    bucket         = "b54-terraform-remote-state"
    key            = "module-exmaple/terraform.tfstate"  # this is the folder path that your are refferig
    region         = "us-east-1"

  }
}