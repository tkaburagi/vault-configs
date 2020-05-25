seal "awskms" {
  region     = "ap-northeast-1"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

storage "raft" {
  path = "/home/ubuntu/vault-raft-data"
  node_id = "NODE_ID_REPLACE"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable = 1
}

ui = true

api_addr = "API_ADDR_REPLACE"

cluster_addr = "http://CLUSTER_ADDR_REPLACE:8201"