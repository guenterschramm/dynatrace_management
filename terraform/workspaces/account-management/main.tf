# Terraform workspace for Dynatrace account management
locals {
  workspace_scope = "account_management"
}

module "iam_group" {
  source = "./modules/iam_group"
}

module "iam_permission" {
  source = "./modules/iam_permission"
}

module "iam_policy" {
  source = "./modules/iam_policy"
}

module "iam_policy_bindings" {
  source = "./modules/iam_policy_bindings"
}

module "iam_policy_bindings_v2" {
  source = "./modules/iam_policy_bindings_v2"
}

module "iam_policy_boundary" {
  source = "./modules/iam_policy_boundary"
}

module "iam_service_user" {
  source = "./modules/iam_service_user"
}

module "iam_user" {
  source = "./modules/iam_user"
}

module "mgmz_permission" {
  source = "./modules/mgmz_permission"
}

module "policy_bindings" {
  source = "./modules/policy_bindings"
}

module "user" {
  source = "./modules/user"
}

module "user_group" {
  source = "./modules/user_group"
}


# Example target domains: policies, boundaries, roles and account-wide user bindings.
