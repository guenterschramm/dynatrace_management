# Terraform workspace for Dynatrace platform: test-environment
locals {
  environment_name = "test-environment"
  environment_type = "staging"
  workspace_scope = "platform"
}

module "automation_business_calendar" {
  source = "./modules/automation_business_calendar"
  object_file = "${path.root}/objects/automation_business_calendar.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_scheduling_rule" {
  source = "./modules/automation_scheduling_rule"
  object_file = "${path.root}/objects/automation_scheduling_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_workflow" {
  source = "./modules/automation_workflow"
  object_file = "${path.root}/objects/automation_workflow.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "azure_connection" {
  source = "./modules/azure_connection"
  object_file = "${path.root}/objects/azure_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "azure_connection_authentication" {
  source = "./modules/azure_connection_authentication"
  object_file = "${path.root}/objects/azure_connection_authentication.json"
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

module "hub_extension_v2_config" {
  source = "./modules/hub_extension_v2_config"
  object_file = "${path.root}/objects/hub_extension_v2_config.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_business_events" {
  source = "./modules/openpipeline_business_events"
  object_file = "${path.root}/objects/openpipeline_business_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_davis_events" {
  source = "./modules/openpipeline_davis_events"
  object_file = "${path.root}/objects/openpipeline_davis_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_davis_problems" {
  source = "./modules/openpipeline_davis_problems"
  object_file = "${path.root}/objects/openpipeline_davis_problems.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_events" {
  source = "./modules/openpipeline_events"
  object_file = "${path.root}/objects/openpipeline_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_logs" {
  source = "./modules/openpipeline_logs"
  object_file = "${path.root}/objects/openpipeline_logs.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_metrics" {
  source = "./modules/openpipeline_metrics"
  object_file = "${path.root}/objects/openpipeline_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_sdlc_events" {
  source = "./modules/openpipeline_sdlc_events"
  object_file = "${path.root}/objects/openpipeline_sdlc_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_security_events" {
  source = "./modules/openpipeline_security_events"
  object_file = "${path.root}/objects/openpipeline_security_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_spans" {
  source = "./modules/openpipeline_spans"
  object_file = "${path.root}/objects/openpipeline_spans.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_system_events" {
  source = "./modules/openpipeline_system_events"
  object_file = "${path.root}/objects/openpipeline_system_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_user_events" {
  source = "./modules/openpipeline_user_events"
  object_file = "${path.root}/objects/openpipeline_user_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_user_sessions" {
  source = "./modules/openpipeline_user_sessions"
  object_file = "${path.root}/objects/openpipeline_user_sessions.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "platform_bucket" {
  source = "./modules/platform_bucket"
  object_file = "${path.root}/objects/platform_bucket.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "platform_slo" {
  source = "./modules/platform_slo"
  object_file = "${path.root}/objects/platform_slo.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "segment" {
  source = "./modules/segment"
  object_file = "${path.root}/objects/segment.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "settings_permissions" {
  source = "./modules/settings_permissions"
  object_file = "${path.root}/objects/settings_permissions.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
