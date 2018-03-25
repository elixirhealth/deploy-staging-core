#!/usr/bin/env bash

export TF_VAR_gcp_project="elixir-deploy-staging"
export TF_VAR_cluster_name="primary"
export TF_VAR_region="us-east1"

export TF_VAR_secrets_core_key_ring_name="deploy-core"
export TF_VAR_tf_secrets_core_key_name="terraform-secrets-core"
export TF_VAR_secrets_app_key_ring_name="deploy-app"
export TF_VAR_tf_secrets_app_key_name="terraform-secrets-app"
