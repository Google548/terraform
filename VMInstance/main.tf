# This is the provider used to spin up the gcloud instance
provider "google" {
 
  project = "labsession-548"
  region  = "us-east1"
  credentials = file("C:\\Users\\Rakhi.Rakhi-PC\\Desktop\\GCP\\mylab\\Terraform\\gcp-devops\\jsonkey.json")
}

resource "google_compute_instance" "vm-instance" {
  name         = "cde"
  machine_type = "f1-micro"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}


