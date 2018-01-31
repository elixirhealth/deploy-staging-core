############
# Required #
############

variable "gcp_project" {
  description = "GCP project owning the cluster"
}

variable "cluster_name" {
  description = "name of the cluster"
}

variable "region" {
  description = "region to deploy infrastructure in"
}

variable "key_ring_name" {
  default = "name of key ring for secrets"
}

variable "tf_secrets_key_name" {
  default = "name of key for encrypting terraform secrets"
}

###########
# Secrets #
###########

variable "kubernetes_master_password" {
  description = "password for kubernetes master"
}

############
# Optional #
############

variable "gcp_credentials_file" {
  description = "GCP credentials JSON file"
  default     = "gcp_credentials.json"
}

variable "gce_zone" {
  default = "us-east1-b"
}
