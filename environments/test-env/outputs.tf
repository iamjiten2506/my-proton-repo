output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "IDs of the subnets"
  value       = aws_subnet.public[*].id
}

output "environment_name" {
  description = "Environment name"
  value       = var.environment_name
}
