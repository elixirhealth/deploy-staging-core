provider "google" {
  project     = "${var.gcp_project}"
  region      = "${var.region}"
  credentials = "${file(var.gcp_credentials_file)}"
  version     = "~> 1.5"
}
