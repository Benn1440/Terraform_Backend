resource "aws_s3_bucket" "terraform_s3_bucket" {
  bucket = "terraform_s3_bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

