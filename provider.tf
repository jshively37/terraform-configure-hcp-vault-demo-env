terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.11.0"
    }
  }
}

provider "vault" {
  address = data.terraform_remote_state.hcp_vault.outputs.hcp_vault_public_url
  token   = data.terraform_remote_state.hcp_vault.outputs.hcp_vault_admin_token
}
