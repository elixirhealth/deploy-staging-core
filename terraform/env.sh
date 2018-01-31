#!/usr/bin/env bash

export TF_VAR_gcp_project="elxir-deploy-staging"
export TF_VAR_cluster_name="primary"
export TF_VAR_region="us-east1"
export TF_VAR_key_ring_name="deploy-core"
export TF_VAR_tf_secrets_key_name="terraform-secrets"
