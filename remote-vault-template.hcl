storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault/"
  service = "SERVICE_NAME_REPLACE"
}


seal "awskms" {
  region     = "ap-northeast-1"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true

api_addr = "API_ADDR_REPLACE"

cluster_addr = "CLUSTER_ADDR_REPLACE"
