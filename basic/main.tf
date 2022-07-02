terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
  }
}

provider "google" {

  project = "terraform-practice-t0yohei"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-c"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}
