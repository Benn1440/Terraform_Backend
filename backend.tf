terraform {
  backend "s3" {
    bucket = "terraform-bigben-bucket"
    dynamodb_table = "Terraform-lock-file-Table"
    encrypt = true
    key = "aws_terraform/terraform.tfstate"
    region = "eu-west-1"
  }
}