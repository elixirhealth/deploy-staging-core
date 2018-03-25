terraform {
  backend "gcs" {
    bucket      = "elixir-deploy-staging-clusters"
    prefix      = "primary-core/terraform"
    project     = "elixir-deploy-staging"
    region      = "us-east1"
    credentials = "gcp_credentials.json"
  }
}
