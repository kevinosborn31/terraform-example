terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}

provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Change to a unique bucket name
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}