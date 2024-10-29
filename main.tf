terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.70.1"
    }
  }
}

# Setup IBM terraform providers
provider "ibm" {
  region           = var.region
  zone             = "${var.region}-${var.zone}"
  ibmcloud_api_key = var.ibmcloud_api_key
}
