resource "google_project_iam_policy" "project" {
  project     = "${var.gcp_project}"
  policy_data = "${data.google_iam_policy.deploy-app-admin.policy_data}"
}

data "google_iam_policy" "deploy-app-admin" {
  binding {
    role = "roles/compute.storageAdmin"

    members = [
      "serviceAccount:terraform-app@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }

  binding {
    role = "roles/compute.securityAdmin"

    members = [
      "serviceAccount:terraform-app@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }

  binding {
    role = "roles/storage.objectAdmin"

    members = [
      "serviceAccount:terraform-app@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }

  binding {
    role = "roles/cloudsql.admin"

    members = [
      "serviceAccount:terraform-app@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }

  binding {
    role = "roles/datastore.owner"

    members = [
      "serviceAccount:app-catalog@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }

  binding {
    role = "roles/cloudsql.client"

    members = [
      "serviceAccount:app-catalog@elixir-deploy-staging-1.iam.gserviceaccount.com",
    ]
  }
}
