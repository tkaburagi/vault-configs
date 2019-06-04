# storage "file" {
#    path = "/Users/kabu/hashicorp/vault/localdata"
# }

seal "awskms" {
  region     = "ap-northeast-1"
  # access_key -> "$AWS_ACCESS_KEY_ID"
  # secret_key -> "$AWS_SECRET_ACCESS_KEY"
  # kms_key_id -> "$VAULT_AWSKMS_SEAL_KEY_ID"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault/"
}

listener "tcp" {
  address     = "127.0.0.1:9200"
  tls_disable = "true"
}

cluster_name = "Kabu Vault"
ui = true