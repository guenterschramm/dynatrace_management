# Terraform workspace for Dynatrace environment: prod-environment
locals {
  environment_name = "prod-environment"
  environment_type = "production"
  workspace_scope = "environment"
}

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
