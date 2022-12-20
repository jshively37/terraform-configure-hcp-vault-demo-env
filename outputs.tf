output "hcp_cluster_id" {
    value = data.terraform_remote_state.hcp_vault.outputs.hcp_vault_cluster_id
}
