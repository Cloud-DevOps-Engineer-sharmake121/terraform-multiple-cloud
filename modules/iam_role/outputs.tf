output "name" {
  value = aws_iam_role.this.name
}
output "arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.this.arn
}
