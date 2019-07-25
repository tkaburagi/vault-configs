storage "file" {
   path = "/Users/Shared/vault-ent-data"
}

seal "awskms" {
  region     = "ap-northeast-1"
  access_key = "$AWS_ACCESS_KEY_ID"
  secret_key = "$AWS_SECRET_ACCESS_KEY"
  kms_key_id = "$VAULT_AWSKMS_SEAL_KEY_ID"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1
}

api_addr = "http://127.0.0.1:8200"

ui = true
