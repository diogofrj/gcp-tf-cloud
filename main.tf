terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
  credentials = file("../keys/certifications-13072021-89357e8b437d.json")
  project     = "certifications-13072021"
  region      = "us-central1"
  zone        = "us-central1-c"
}
