# Terraform workspace for Dynatrace platform: test-environment
locals {
  environment_name = "test-environment"
  environment_type = "staging"
  workspace_scope = "platform"
}

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
