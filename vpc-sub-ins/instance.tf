
resource "google_compute_instance" "instance" {
  project      = var.project_id
  name         = "shailen-ins"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
     network = "${google_compute_network.google_vpc_k_01.id}"
    access_config {
        // Ephemeral IP
    }
  }
}