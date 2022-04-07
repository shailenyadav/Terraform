provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("./shailen_key.json")
}