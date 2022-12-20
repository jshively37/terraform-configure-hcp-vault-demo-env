terraform {
  cloud {
    organization = "jshively_hashi"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["configure-hcp-vault-demo-env"]
    }
  }
}
