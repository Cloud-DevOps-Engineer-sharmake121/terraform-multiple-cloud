terraform {
  backend "s3" {
    bucket         = "devops-interview-tfstate-us-east-1-sharmaake"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
