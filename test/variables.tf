variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "org_id" {
  description = "Organization ID"
  type        = string
}

variable "region" {
  description = "Default region for resources"
  type        = string
  default     = "us-central1"
}

variable "shared_vpc_project_id" {
  description = "Project ID for Shared VPC host"
  type        = string
}

variable "service_project_1_id" {
  description = "Project ID for Service Project 1"
  type        = string
}

variable "service_project_2_id" {
  description = "Project ID for Service Project 2"
  type        = string
}

variable "shared_vpc_subnets" {
  description = "List of subnet maps with name, ip_cidr, and region"
  type = list(object({
    name       = string
    ip_cidr    = string
    region     = string
  }))
}