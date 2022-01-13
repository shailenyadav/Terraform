# Provider block to configure Google Provider 
provider "google" {
  project     = var.project_id
  region      = var.resource_region
  credentials = file("E:/HCL/gdc-trng-get-01-5066edc05834.json")
}