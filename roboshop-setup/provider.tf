terraform {
  backend "s3" {

        bucket = "b54-terraform-remote-state"
        key    = "robot/terraform.tfstate"
        region = "us-east-1"
  }
}


provider "aws" {
  
  region ="us-east-1"
}