# HCP Vault with Terraform

This module will configure an HCP Vault cluster for demo and testing.

The HCP Vault cluster information is retrieved from another TFCB workspace called `create-hcp-vault` and references the `hcp_vault_public_url` and `hcp_vault_admin_token` outputs from that workspace.


The Terraform code used to deploy the HCP Vault cluster can be found at [https://github.com/jshively37/terraform-create-hcp-vault](https://github.com/jshively37/terraform-create-hcp-vault)
