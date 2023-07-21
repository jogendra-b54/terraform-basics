# Mot this statefile is rmeote and this is what we use in a team based approach
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "b54-terraform-remote-state"
    key            = "05-remote/terraform.tfstate"  # this is the folder path that your are refferig
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    #dynamodb_table = "terraform-up-and-running-locks"
    #encrypt        = true
  }
}