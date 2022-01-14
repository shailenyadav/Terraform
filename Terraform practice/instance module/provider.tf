# Provider block to configure Google Provider 
provider "google" {
  project     = var.project_id
  region      = var.resource_region
  credentials = file("file path.json")
}
