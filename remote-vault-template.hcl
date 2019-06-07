storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault/"
  service = SERVICE_NAME
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

disable_mlock = true

api_addr = API_ADDR