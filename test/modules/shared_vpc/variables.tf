variable "project_id" {
  description = "Project ID for Shared VPC host"
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

variable "subnets" {
  description = "List of subnet maps with name, ip_cidr, and region"
  type = list(object({
    name       = string
    ip_cidr    = string
    region     = string
  }))
}

variable "service_projects" {
  description = "List of service project IDs that can use the shared subnets"
  type        = list(string)
  default     = []
}