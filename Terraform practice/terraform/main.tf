resource "google_compute_network" "shailen-vpc" {
  project = var.project_id

  name                            = "shailen-vpc"
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = true
  delete_default_routes_on_create = false
}

resource "google_compute_subnetwork" "shailen-subnet" {
  for_each                 = var.subnet_data
  name                     = each.key
  ip_cidr_range            = each.value
  region                   = var.region
  private_ip_google_access = true
  network                  = google_compute_network.shailen-vpc.id
}

module "instances" {

  source = "./modules/instances"
}

#module "storage" {
#  source = "./modules/storage"
#}