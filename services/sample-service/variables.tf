variable "service_name" {
  description = "Name of the service"
  type        = string
}

variable "environment_name" {
  description = "Name of the environment"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID from environment"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs from environment"
  type        = list(string)
}
