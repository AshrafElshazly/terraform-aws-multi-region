variable "bucket" {
  type        = string
  description = "The name of the S3 bucket to be created."
}

resource "aws_s3_bucket" "s3" {
  bucket = var.bucket
}
