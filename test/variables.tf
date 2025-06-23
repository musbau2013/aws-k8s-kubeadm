variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "org_id" {
  description = "Organization ID"
  type        = string
}

# variable "region" {
#   description = "Default region for resources"
#   type        = string
#   default     = "us-central1"
# }

variable "shared_vpc_project_id" {
  description = "Project ID for Shared VPC host"
  type        = string
  default = "ava-dev-48515"
}

variable "service_project_1_id" {
  description = "Project ID for Service Project 1"
  type        = string
  default = "thriftline-dev-48515"
}

variable "service_project_2_id" {
  description = "Project ID for Service Project 2"
  type        = string
  default = "thriftline-uat-48515"
}

variable "shared_vpc_subnets" {
  description = "List of subnet maps with name, ip_cidr, and region"
  type = list(object({
    name       = string
    ip_cidr    = string
    region     = string
  }))
default = [
    {
      name    = "subnet-a"
      ip_cidr = "10.0.1.0/24"
      region  = "us-central1"
    },
    {
      name    = "subnet-b"
      ip_cidr = "10.0.2.0/24"
      region  = "us-central1"
    }
  ]
}