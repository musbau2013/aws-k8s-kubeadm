resource "google_project" "shared_vpc_host" {
  project_id      = var.project_id
  name            = "${var.project_id}-project"
  billing_account = var.billing_account
  org_id          = var.org_id
}

resource "google_project_service" "enable_vpc_service" {
  project = google_project.shared_vpc_host.project_id
  service = "compute.googleapis.com"
}

resource "google_compute_network" "vpc_network" {
  provider = google-beta

  name                    = "${var.project_id}-network"
  auto_create_subnetworks = false
  project                 = google_project.shared_vpc_host.project_id
}

resource "google_compute_subnetwork" "vpc_subnets" {
  count = length(var.subnets)

  name          = var.subnets[count.index].name
  region        = var.subnets[count.index].region
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = var.subnets[count.index].ip_cidr
  project       = google_project.shared_vpc_host.project_id

  depends_on = [google_project_service.enable_vpc_service]
}

resource "google_compute_shared_vpc_host_project" "shared_vpc_host" {
  project = google_project.shared_vpc_host.project_id
}

# Grant Compute Network User on each subnet to service projects
resource "google_compute_subnetwork_iam_binding" "subnet_iam_bindings" {
  count = length(google_compute_subnetwork.vpc_subnets)

  subnetwork = google_compute_subnetwork.vpc_subnets[count.index].name
  region     = google_compute_subnetwork.vpc_subnets[count.index].region
  project    = google_project.shared_vpc_host.project_id
  role       = "roles/compute.networkUser"

  members = [
    for sp in var.service_projects : "project:${sp}"
  ]
}