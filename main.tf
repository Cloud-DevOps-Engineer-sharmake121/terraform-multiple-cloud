# AWS VPC module
module "aws_vpc" {
  source      = "./modules/aws_vpc"
  cidr_block  = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az          = "us-east-1a"
  name        = "aws-vpc"
}

# GCP VPC module
module "gcp_vpc" {
  source      = "./modules/gcp_vpc"
  name        = "gcp-vpc"
  subnet_cidr = "10.1.0.0/24"
  region      = "us-central1"
}

# IAM Role module
module "iam_role" {
  source             = "./modules/iam_role"
  name               = "workload-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}
