resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"
  zone = "${var.gce_zone}"

  node_pool {
    name       = "n1-highmem-2"
    node_count = 0

    node_config {
      machine_type = "n1-highmem-2"
      disk_size_gb = 25

      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
      ]
    }

    # TODO (drausin) autoscaling, management blocks?
  }

  master_auth {
    username = "admin"
    password = "${var.kubernetes_master_password}"
  }

  monitoring_service = "monitoring.googleapis.com"
  logging_service    = "logging.googleapis.com"

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${var.cluster_name} --project ${var.gcp_project} --zone ${var.gce_zone}"
  }
}
