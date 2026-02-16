# Multi-Cloud VPC & IAM Role Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-v1.6+-blue?logo=terraform)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-CI%2FCD-lightgrey?logo=githubactions)
![AWS](https://img.shields.io/badge/AWS-VPC%20%26%20IAM-orange?logo=amazonaws)
![GCP](https://img.shields.io/badge/GCP-VPC%20Networking-yellow?logo=googlecloud)

This project provisions **AWS** and **GCP** networking resources along with an **AWS IAM Role** using Terraform.  
It demonstrates modular infrastructure design, multi-cloud provider integration, and professional project structuring.

---
## 📂 Project Structure
.
├── main.tf              # Root modules (AWS VPC, GCP VPC, IAM Role)
├── providers.tf         # Provider configurations (AWS, GCP)
├── variables.tf         # Root-level variables (if any)
├── outputs.tf           # Root-level outputs
└── modules/
├── aws_vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── gcp_vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── iam_role/
├── main.tf
├── variables.tf
└── outputs.tf

Code

---

## 🚀 Features

- **AWS VPC & Subnet**  
  - Creates a VPC with DNS support and a subnet in a chosen AZ.  
- **GCP VPC & Subnet**  
  - Creates a custom VPC and subnet in a specified region.  
- **AWS IAM Role**  
  - Creates an IAM role with a configurable assume role policy.  
- **Outputs**  
  - Exposes VPC IDs, subnet IDs, and IAM role details for easy reference.

---

## ⚙️ Usage

### 1. Initialize Terraform
```bash
terraform init
2. Validate Configuration
bash
terraform validate
3. Plan Infrastructure
bash
terraform plan
4. Apply Infrastructure (with approval)
bash
terraform apply
🔒 CI/CD Integration
This repository includes a GitHub Actions workflow that:

Authenticates securely with AWS (via IAM user secrets).

Authenticates securely with GCP (via service account JSON secret).

Runs terraform init, validate, and plan on every push.

Can be extended with manual approval gates for terraform apply.

📌 Notes
Do not commit sensitive files like key.json.

Store credentials in GitHub Secrets (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, GCP_CREDENTIALS_JSON).

This project is designed for portfolio demonstration and can be adapted for production with least‑privilege IAM roles.

🔮 Future Enhancements
Manual Approval Gate for terraform apply  
Add a GitHub Actions environment protection rule so infrastructure changes require human approval before deployment.

Cost Estimation  
Integrate infracost to show estimated cloud costs in pull requests.

Security Scanning  
Add tfsec or checkov to automatically scan Terraform code for misconfigurations and security risks.

Multi-Environment Support  
Extend modules to support dev, staging, and prod environments with separate state files.

Monitoring & Logging  
Deploy CloudWatch (AWS) and Cloud Logging (GCP) integrations for observability.

Automated Key Rotation  
Implement scheduled rotation of GCP service account keys and AWS IAM access keys for stronger security posture.
