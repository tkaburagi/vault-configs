seal "awskms" {
  region     = "ap-northeast-1"
  endpoint   = "https://kms.ap-northeast-1.amazonaws.com"
}

storage "raft" {
  path = "/home/ubuntu/vault-raft-data"
  node_id = "NODE_ID_REPLACE"
  retry_join {
   leader_api_addr = "https://CLUSTER_ADDR_REPLACE:8200"
   leader_ca_cert_file = "/home/ubuntu/dr-vaultca-elb.crt.pem"
   leader_client_cert_file = "/home/ubuntu/dr-vaultvault-elb.crt.pem"
   leader_client_key_file = "/home/ubuntu/dr-vaultvault-elb.key.pem"
  }
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_cert_file = "/home/ubuntu/dr-vaultvault-elb.crt.pem"
  tls_key_file = "/home/ubuntu/dr-vaultvault-elb.key.pem"
}

ui = true

api_addr = "API_ADDR_REPLACE"

cluster_addr = "https://CLUSTER_ADDR_REPLACE:8201"