data "terraform_remote_state" "hcp_vault" {
    backend = "remote"

    config = {
        organization = "jshively_hashi"
        workspaces = {
            name = "create-hcp-vault"
        }
    }
}
