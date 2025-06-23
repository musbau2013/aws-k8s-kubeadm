terraform {
  required_version = ">= 1.6.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.40.0"
    }
  }

#   backend "gcs" {
#     bucket  = "your-terraform-state-bucket"
#     prefix  = "path/to/state"
#   }
}