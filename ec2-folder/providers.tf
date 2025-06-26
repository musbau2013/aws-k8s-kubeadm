

provider "aws" {
  region = var.region  # Change to your preferred region

  # Assume Role with OIDC (no static credentials needed)
  assume_role {
    role_arn     = var.role_arn # e.g., tfc-oidc-role
    session_name = "terraform-cloud-session"
  }
}