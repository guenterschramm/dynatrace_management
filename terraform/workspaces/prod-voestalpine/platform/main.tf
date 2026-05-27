# Terraform workspace for Dynatrace platform: prod-environment
locals {
  environment_name = "prod-environment"
  environment_type = "production"
  workspace_scope = "platform"
}

module "automation_workflow" {
  source = "./modules/automation_workflow"
  object_file = "${path.root}/objects/automation_workflow.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "direct_shares" {
  source = "./modules/direct_shares"
  object_file = "${path.root}/objects/direct_shares.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "document" {
  source = "./modules/document"
  object_file = "${path.root}/objects/document.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "generic_setting" {
  source = "./modules/generic_setting"
  object_file = "${path.root}/objects/generic_setting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
