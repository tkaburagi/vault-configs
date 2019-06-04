storage "file" {
   path = "/Users/kabu/hashicorp/vault/localdata"
}

listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1
}

api_addr = "http://127.0.0.1:8200"

ui = true