resource "google_project" "service_project" {
  project_id      = var.project_id
  name            = "${var.project_id}-project"
  billing_account = var.billing_account
  org_id          = var.org_id
}

resource "google_compute_shared_vpc_service_project" "attach_to_shared_vpc" {
  host_project    = var.shared_vpc_project_id
  service_project = google_project.service_project.project_id
}