billing_account         = "YOUR-BILLING-ACCOUNT-ID"
org_id                  = "YOUR-ORGANIZATION-ID"
shared_vpc_project_id   = "my-shared-vpc-host"
service_project_1_id    = "my-service-project-1"
service_project_2_id    = "my-service-project-2"
shared_vpc_subnets = [
  {
    name     = "subnet-us-central1"
    ip_cidr  = "10.0.0.0/24"
    region   = "us-central1"
  }
]