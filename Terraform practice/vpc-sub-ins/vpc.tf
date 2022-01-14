resource "google_compute_network" "google_vpc_k_01" {
  project                 = var.project_id
  name                    = "shailen-vpc"
  auto_create_subnetworks = true
  mtu                     = 1460
}
