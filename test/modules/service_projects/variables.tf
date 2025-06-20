variable "project_id" {
  description = "Project ID for service project"
  type        = string
}

variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "org_id" {
  description = "Organization ID"
  type        = string
}

variable "shared_vpc_project_id" {
  description = "Project ID of the Shared VPC host"
  type        = string
}