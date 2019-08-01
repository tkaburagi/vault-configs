storage "file" {
   path = "/Users/Shared/vault-oss-dev-data"
}


listener "tcp" {
  address     = "192.168.11.2:8200"
  tls_disable = 1
}

api_addr = "http://192.168.11.2:8200"

ui = true