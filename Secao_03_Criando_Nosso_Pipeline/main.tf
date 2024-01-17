provider "google" {
    project = "terraform-101-123456"
    region  = "us-central1"
    zone    = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
  machine_type = "f1-micro"
  name         = "app-engine"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}
