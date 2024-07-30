variable "aws_region" {
  type        = string
  description = "default region"
  default     = "us-east-1"

}

variable "s3_bucket_name" {
  type        = string
  description = "name of the s3 bucket"
  default     = "dev"
}

variable "file_upload_path" {
  type        = string
  description = "example file to be uploaded"
}
