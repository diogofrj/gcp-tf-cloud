
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}



resource "google_compute_instance" "kube_instance" {
  name         = "terraform-instance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
