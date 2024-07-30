terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "create-bucket" {
  bucket = "${random_pet.bucket.id}-${var.s3_bucket_name}"
  tags = {
    Name        = "Bucket for tests"
    Environment = "DEV"
  }
}

resource "aws_s3_object" "object" {
  bucket     = "${random_pet.bucket.id}-${var.s3_bucket_name}"
  key        = "example_file_txt"
  source     = var.file_upload_path
  depends_on = [aws_s3_bucket.create-bucket]
}
