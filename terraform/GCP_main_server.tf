variable "GCP_CREDENTIALS" {
  description = "Archivo de credenciales para Google Cloud Platform"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file(var.GCP_CREDENTIALS)

  project = "alvaro-demo-elastic-000001"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
