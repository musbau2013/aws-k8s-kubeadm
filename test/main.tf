module "shared_vpc_project" {
  source = "./modules/shared_vpc"

  project_id        = var.shared_vpc_project_id
  billing_account   = var.billing_account
  org_id            = var.org_id
#   region            = var.region
  subnets           = var.shared_vpc_subnets
  service_projects  = [
    var.service_project_1_id,
    var.service_project_2_id
  ]
}

module "service_project_1" {
  source = "./modules/service_projects"

  project_id      = var.service_project_1_id
  billing_account = var.billing_account
  org_id          = var.org_id
  shared_vpc_project_id = module.shared_vpc_project.project_id
  # region          = var.region
}

module "service_project_2" {
  source = "./modules/service_projects"

  project_id      = var.service_project_2_id
  billing_account = var.billing_account
  org_id          = var.org_id
  shared_vpc_project_id = module.shared_vpc_project.project_id
  # region          = var.region
}