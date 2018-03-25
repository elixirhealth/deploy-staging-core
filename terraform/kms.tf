resource "google_kms_key_ring" "deploy-core" {
  name     = "${var.secrets_core_key_ring_name}"
  location = "${var.region}"
}

resource "google_kms_crypto_key" "terraform-secrets-core" {
  name     = "${var.tf_secrets_core_key_name}"
  key_ring = "${google_kms_key_ring.deploy-core.id}"
}

resource "google_kms_key_ring" "deploy-app" {
  name     = "${var.secrets_app_key_ring_name}"
  location = "${var.region}"
}

resource "google_kms_crypto_key" "terraform-secrets-app" {
  name     = "${var.tf_secrets_app_key_name}"
  key_ring = "${google_kms_key_ring.deploy-app.id}"
}

# TODO (drausin) give drausin@elxirhealth.io user perms to encrypt & decrypt

