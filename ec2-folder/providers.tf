
terraform {
  required_version = ">= 1.0" 
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = var.region  # Change to your preferred region

  # Assume Role with OIDC (no static credentials needed)
  assume_role {
    role_arn     = "arn:aws:iam::381491964789:role/TerraformCloud_Oidc"#var.aws_role_arn # e.g., tfc-oidc-role
    session_name = "terraform-cloud-session"
  }
}