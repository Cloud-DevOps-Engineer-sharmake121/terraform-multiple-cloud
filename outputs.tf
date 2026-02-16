output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_vpc.aws_vpc_id
}

output "aws_subnet_id" {
  description = "The ID of the AWS subnet"
  value       = module.aws_vpc.aws_subnet_id
}


output "gcp_vpc_name" {
  description = "The name of the GCP VPC"
  value       = module.gcp_vpc.vpc_name
}

output "gcp_subnet_name" {
  description = "The name of the GCP subnet"
  value       = module.gcp_vpc.subnet_name
}

output "iam_role_name" {
  description = "The name of the IAM role"
  value       = module.iam_role.name
}
output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = module.iam_role.arn
}

