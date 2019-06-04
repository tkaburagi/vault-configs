path "transit/*" {
  capabilities = ["read"]
}

path "aws" {
  capabilities = ["deny"]
}

path "kv" {
  capabilities = ["deny"]
}

path "sys" {
  capabilities = ["deny"]
}