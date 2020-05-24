seal "awskms" {
  region     = "ap-northeast-1"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

storage "file" {
  path = "/home/ubuntu/vault-data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable = 1
}

ui = true

api_addr = "API_ADDR_REPLACE"

cluster_addr = "https://CLUSTER_ADDR_REPLACE:8201"