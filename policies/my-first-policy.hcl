path "database/roles/+" {
  capabilities = ["list","create", "read"]
}

path "database/roles/role-handson" {
  capabilities = ["deny"]
}
