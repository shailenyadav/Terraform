provider "google" {
  project = var.project_id
  region  = var.resource_region
  zone    = var.resource_zone
}