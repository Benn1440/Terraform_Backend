resource "aws_s3_bucket" "bigben-bucket" {
  bucket = "terraform-bigben-bucket"

  tags = {
    Name        = "Terraform bucket"
    Environment = "Development"
  }
}

resource "aws_dynamodb_table" "terraform-lock-table" {
  name           = "Terraform-lock-file-Table"
  billing_mode   = "PAY_PER_REQUEST"
#   read_capacity  = 20
#   write_capacity = 20
  hash_key       = "LockID"
  

  attribute {
    name = "LockID"
    type = "S"
  }

   tags = {
    Name        = "dynamodb-table-terraform"
    Environment = "development"
  }

}

#   attribute {
#     name = "GameTitle"
#     type = "S"
#   }

#   attribute {
#     name = "TopScore"
#     type = "N"
#   }

#   ttl {
#     attribute_name = "TimeToExist"
#     enabled        = true
#   }

#   global_secondary_index {
#     name               = "GameTitleIndex"
#     hash_key           = "GameTitle"
#     range_key          = "TopScore"
#     write_capacity     = 10
#     read_capacity      = 10
#     projection_type    = "INCLUDE"
#     non_key_attributes = ["UserId"]
#   }

 




