terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "service_bucket" {
  bucket = "${var.service_name}-${var.environment_name}-${random_id.bucket_suffix.hex}"

  tags = {
    Name        = var.service_name
    Environment = var.environment_name
    Service     = "proton-test-service"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket_versioning" "service_bucket_versioning" {
  bucket = aws_s3_bucket.service_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
