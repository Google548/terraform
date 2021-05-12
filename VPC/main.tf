provider "google" {
  project = "labsession-548"
  credentials = file("jsonkey.json")
  region  = "europe-west2"
  zone    = "europe-west2-a"
}
resource "google_compute_network" "vpc_network" {
  name = "terraform-networks"
}

