# Terraform workspace for Dynatrace account management
locals {
  workspace_scope = "account_management"
}

module "account_management" {
  source = "./modules/iam_group"
  account_id = var.account_id
}

# Example target domains: policies, boundaries, roles and account-wide user bindings.
