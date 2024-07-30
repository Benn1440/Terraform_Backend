terraform {
  backend "s3" {
    bucket = "terraform-bigben-bucket"
    dynamodb_table = "Terraform-lock-file-Table"
    encrypt = true
    key = "~/.ssh/devopskey.pub"
    region = "eu-west-1"
  }
}