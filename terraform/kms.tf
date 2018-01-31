resource "google_kms_key_ring" "deploy-core" {
  name     = "${var.key_ring_name}"
  location = "${var.region}"
}

resource "google_kms_crypto_key" "terraform-secrets" {
  name     = "${var.tf_secrets_key_name}"
  key_ring = "${google_kms_key_ring.deploy-core.id}"
}

# TODO (drausin) give drausin@elxirhealth.io user perms to encrypt & decrypt

