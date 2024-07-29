terraform {
  backend "s3" {
    bucket = "terraform_s3_bucket"
    dynamodb_table = "terraform_lock_table"
    encrypt = true
    key = "aws_terraform/terraform.tfstate"
    region = "eu-west-1"
  }
}