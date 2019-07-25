storage "file" {
   path = "/Users/Shared/vault-oss-data"
}

listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1
}

seal "awskms" {
  region     = "ap-northeast-1"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

api_addr = "http://127.0.0.1:8200"

ui = true
