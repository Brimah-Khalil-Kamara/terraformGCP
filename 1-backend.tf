# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "brimahmattressslapper"
    prefix = "terraform/state"
    credentials = "mattressavengers1-70fe336e9018.json"

  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

