terraform {
  backend "gcs" {
    bucket      = "elxir-deploy-staging-clusters"
    prefix      = "primary/terraform"
    project     = "elxir-deply-staging"
    region      = "us-east1"
    credentials = "gcp_credentials.json"
  }
}
