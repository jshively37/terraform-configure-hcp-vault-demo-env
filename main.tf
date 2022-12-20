resource "vault_auth_backend" "userpass" {
  type = "userpass"
}

resource "vault_policy" "demo_policy" {
  name   = "demo_policy"
  policy = <<EOT
  path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
EOT

}

resource "vault_generic_endpoint" "user" {
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/${var.username}"
  ignore_absent_fields = true

  data_json = <<EOT
  {
    "policies": ["demo_policy"],
    "password": "${var.password}"
  }
  EOT
}
