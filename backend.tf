terraform {
  backend "s3" {
    bucket = "terraform-bigben-bucket"
    dynamodb_table = "Terraform-lock-file-Table"
    encrypt = true
    key = "aws-terraform/envs/development"
    region = "eu-west-1"
  }
}
