# terraform {
#   backend "s3" {
#     bucket = "terraform_bucket"
#     dynamodb_table = "terraform-lock-table"
#     encrypt = true
#     key = "aws_terraform/terraform.tfstate"
#     region = "eu-west-1"
#   }
# }