# Terraform workspace for Dynatrace environment: prod-environment
locals {
  environment_name = "prod-environment"
  environment_type = "production"
  workspace_scope = "environment"
}

module "activegate_token" {
  source = "./modules/activegate_token"
  object_file = "${path.root}/objects/activegate_token.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "activegate_updates" {
  source = "./modules/activegate_updates"
  object_file = "${path.root}/objects/activegate_updates.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ag_token" {
  source = "./modules/ag_token"
  object_file = "${path.root}/objects/ag_token.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aix_extension" {
  source = "./modules/aix_extension"
  object_file = "${path.root}/objects/aix_extension.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "alerting" {
  source = "./modules/alerting"
  object_file = "${path.root}/objects/alerting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ansible_tower_notification" {
  source = "./modules/ansible_tower_notification"
  object_file = "${path.root}/objects/ansible_tower_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "api_detection" {
  source = "./modules/api_detection"
  object_file = "${path.root}/objects/api_detection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "api_token" {
  source = "./modules/api_token"
  object_file = "${path.root}/objects/api_token.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "app_monitoring" {
  source = "./modules/app_monitoring"
  object_file = "${path.root}/objects/app_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "application_detection_rule" {
  source = "./modules/application_detection_rule"
  object_file = "${path.root}/objects/application_detection_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "application_detection_rule_v2" {
  source = "./modules/application_detection_rule_v2"
  object_file = "${path.root}/objects/application_detection_rule_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "application_error_rules" {
  source = "./modules/application_error_rules"
  object_file = "${path.root}/objects/application_error_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "appsec_notification" {
  source = "./modules/appsec_notification"
  object_file = "${path.root}/objects/appsec_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attack_alerting" {
  source = "./modules/attack_alerting"
  object_file = "${path.root}/objects/attack_alerting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attack_allowlist" {
  source = "./modules/attack_allowlist"
  object_file = "${path.root}/objects/attack_allowlist.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attack_rules" {
  source = "./modules/attack_rules"
  object_file = "${path.root}/objects/attack_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attack_settings" {
  source = "./modules/attack_settings"
  object_file = "${path.root}/objects/attack_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attribute_allow_list" {
  source = "./modules/attribute_allow_list"
  object_file = "${path.root}/objects/attribute_allow_list.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attribute_block_list" {
  source = "./modules/attribute_block_list"
  object_file = "${path.root}/objects/attribute_block_list.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attribute_masking" {
  source = "./modules/attribute_masking"
  object_file = "${path.root}/objects/attribute_masking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attributes_preferences" {
  source = "./modules/attributes_preferences"
  object_file = "${path.root}/objects/attributes_preferences.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "audit_log" {
  source = "./modules/audit_log"
  object_file = "${path.root}/objects/audit_log.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_approval" {
  source = "./modules/automation_approval"
  object_file = "${path.root}/objects/automation_approval.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_controller_connections" {
  source = "./modules/automation_controller_connections"
  object_file = "${path.root}/objects/automation_controller_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_workflow_aws_connections" {
  source = "./modules/automation_workflow_aws_connections"
  object_file = "${path.root}/objects/automation_workflow_aws_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_workflow_jira" {
  source = "./modules/automation_workflow_jira"
  object_file = "${path.root}/objects/automation_workflow_jira.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_workflow_k8s_connections" {
  source = "./modules/automation_workflow_k8s_connections"
  object_file = "${path.root}/objects/automation_workflow_k8s_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "automation_workflow_slack" {
  source = "./modules/automation_workflow_slack"
  object_file = "${path.root}/objects/automation_workflow_slack.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "autotag_rules" {
  source = "./modules/autotag_rules"
  object_file = "${path.root}/objects/autotag_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "autotag_v2" {
  source = "./modules/autotag_v2"
  object_file = "${path.root}/objects/autotag_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_anomalies" {
  source = "./modules/aws_anomalies"
  object_file = "${path.root}/objects/aws_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_connection" {
  source = "./modules/aws_connection"
  object_file = "${path.root}/objects/aws_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_connection_role_arn" {
  source = "./modules/aws_connection_role_arn"
  object_file = "${path.root}/objects/aws_connection_role_arn.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_credentials" {
  source = "./modules/aws_credentials"
  object_file = "${path.root}/objects/aws_credentials.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_service" {
  source = "./modules/aws_service"
  object_file = "${path.root}/objects/aws_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "azure_credentials" {
  source = "./modules/azure_credentials"
  object_file = "${path.root}/objects/azure_credentials.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "azure_service" {
  source = "./modules/azure_service"
  object_file = "${path.root}/objects/azure_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "browser_monitor" {
  source = "./modules/browser_monitor"
  object_file = "${path.root}/objects/browser_monitor.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "browser_monitor_outage" {
  source = "./modules/browser_monitor_outage"
  object_file = "${path.root}/objects/browser_monitor_outage.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "browser_monitor_performance" {
  source = "./modules/browser_monitor_performance"
  object_file = "${path.root}/objects/browser_monitor_performance.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "builtin_process_monitoring" {
  source = "./modules/builtin_process_monitoring"
  object_file = "${path.root}/objects/builtin_process_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_buckets" {
  source = "./modules/business_events_buckets"
  object_file = "${path.root}/objects/business_events_buckets.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_capturing_variants" {
  source = "./modules/business_events_capturing_variants"
  object_file = "${path.root}/objects/business_events_capturing_variants.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_metrics" {
  source = "./modules/business_events_metrics"
  object_file = "${path.root}/objects/business_events_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_oneagent" {
  source = "./modules/business_events_oneagent"
  object_file = "${path.root}/objects/business_events_oneagent.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_oneagent_outgoing" {
  source = "./modules/business_events_oneagent_outgoing"
  object_file = "${path.root}/objects/business_events_oneagent_outgoing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_processing" {
  source = "./modules/business_events_processing"
  object_file = "${path.root}/objects/business_events_processing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "business_events_security_context" {
  source = "./modules/business_events_security_context"
  object_file = "${path.root}/objects/business_events_security_context.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "calculated_mobile_metric" {
  source = "./modules/calculated_mobile_metric"
  object_file = "${path.root}/objects/calculated_mobile_metric.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "calculated_service_metric" {
  source = "./modules/calculated_service_metric"
  object_file = "${path.root}/objects/calculated_service_metric.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "calculated_synthetic_metric" {
  source = "./modules/calculated_synthetic_metric"
  object_file = "${path.root}/objects/calculated_synthetic_metric.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "calculated_web_metric" {
  source = "./modules/calculated_web_metric"
  object_file = "${path.root}/objects/calculated_web_metric.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "cloud_development_environments" {
  source = "./modules/cloud_development_environments"
  object_file = "${path.root}/objects/cloud_development_environments.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "cloud_foundry" {
  source = "./modules/cloud_foundry"
  object_file = "${path.root}/objects/cloud_foundry.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "cloudapp_workloaddetection" {
  source = "./modules/cloudapp_workloaddetection"
  object_file = "${path.root}/objects/cloudapp_workloaddetection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "connectivity_alerts" {
  source = "./modules/connectivity_alerts"
  object_file = "${path.root}/objects/connectivity_alerts.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "container_builtin_rule" {
  source = "./modules/container_builtin_rule"
  object_file = "${path.root}/objects/container_builtin_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "container_registry" {
  source = "./modules/container_registry"
  object_file = "${path.root}/objects/container_registry.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "container_rule" {
  source = "./modules/container_rule"
  object_file = "${path.root}/objects/container_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "container_technology" {
  source = "./modules/container_technology"
  object_file = "${path.root}/objects/container_technology.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "crashdump_analytics" {
  source = "./modules/crashdump_analytics"
  object_file = "${path.root}/objects/crashdump_analytics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "credentials" {
  source = "./modules/credentials"
  object_file = "${path.root}/objects/credentials.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_app_anomalies" {
  source = "./modules/custom_app_anomalies"
  object_file = "${path.root}/objects/custom_app_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_app_crash_rate" {
  source = "./modules/custom_app_crash_rate"
  object_file = "${path.root}/objects/custom_app_crash_rate.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_app_enablement" {
  source = "./modules/custom_app_enablement"
  object_file = "${path.root}/objects/custom_app_enablement.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_device" {
  source = "./modules/custom_device"
  object_file = "${path.root}/objects/custom_device.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_service" {
  source = "./modules/custom_service"
  object_file = "${path.root}/objects/custom_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_tags" {
  source = "./modules/custom_tags"
  object_file = "${path.root}/objects/custom_tags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_units" {
  source = "./modules/custom_units"
  object_file = "${path.root}/objects/custom_units.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "dashboard_sharing" {
  source = "./modules/dashboard_sharing"
  object_file = "${path.root}/objects/dashboard_sharing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "dashboards_allowlist" {
  source = "./modules/dashboards_allowlist"
  object_file = "${path.root}/objects/dashboards_allowlist.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "dashboards_general" {
  source = "./modules/dashboards_general"
  object_file = "${path.root}/objects/dashboards_general.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "dashboards_presets" {
  source = "./modules/dashboards_presets"
  object_file = "${path.root}/objects/dashboards_presets.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "data_privacy" {
  source = "./modules/data_privacy"
  object_file = "${path.root}/objects/data_privacy.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "database_anomalies_v2" {
  source = "./modules/database_anomalies_v2"
  object_file = "${path.root}/objects/database_anomalies_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "davis_anomaly_detectors" {
  source = "./modules/davis_anomaly_detectors"
  object_file = "${path.root}/objects/davis_anomaly_detectors.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "davis_copilot" {
  source = "./modules/davis_copilot"
  object_file = "${path.root}/objects/davis_copilot.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "db_app_feature_flags" {
  source = "./modules/db_app_feature_flags"
  object_file = "${path.root}/objects/db_app_feature_flags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ddu_pool" {
  source = "./modules/ddu_pool"
  object_file = "${path.root}/objects/ddu_pool.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "declarative_grouping" {
  source = "./modules/declarative_grouping"
  object_file = "${path.root}/objects/declarative_grouping.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "default_launchpad" {
  source = "./modules/default_launchpad"
  object_file = "${path.root}/objects/default_launchpad.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "devobs_agent_optin" {
  source = "./modules/devobs_agent_optin"
  object_file = "${path.root}/objects/devobs_agent_optin.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "devobs_data_masking" {
  source = "./modules/devobs_data_masking"
  object_file = "${path.root}/objects/devobs_data_masking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "devobs_git_onprem" {
  source = "./modules/devobs_git_onprem"
  object_file = "${path.root}/objects/devobs_git_onprem.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "discovery_default_rules" {
  source = "./modules/discovery_default_rules"
  object_file = "${path.root}/objects/discovery_default_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "discovery_feature_flags" {
  source = "./modules/discovery_feature_flags"
  object_file = "${path.root}/objects/discovery_feature_flags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_analytics" {
  source = "./modules/disk_analytics"
  object_file = "${path.root}/objects/disk_analytics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_anomalies_v2" {
  source = "./modules/disk_anomalies_v2"
  object_file = "${path.root}/objects/disk_anomalies_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_anomaly_rules" {
  source = "./modules/disk_anomaly_rules"
  object_file = "${path.root}/objects/disk_anomaly_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_edge_anomaly_detectors" {
  source = "./modules/disk_edge_anomaly_detectors"
  object_file = "${path.root}/objects/disk_edge_anomaly_detectors.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_options" {
  source = "./modules/disk_options"
  object_file = "${path.root}/objects/disk_options.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_specific_anomalies_v2" {
  source = "./modules/disk_specific_anomalies_v2"
  object_file = "${path.root}/objects/disk_specific_anomalies_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ebpf_service_discovery" {
  source = "./modules/ebpf_service_discovery"
  object_file = "${path.root}/objects/ebpf_service_discovery.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "email_notification" {
  source = "./modules/email_notification"
  object_file = "${path.root}/objects/email_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "endpoint_detection_rules" {
  source = "./modules/endpoint_detection_rules"
  object_file = "${path.root}/objects/endpoint_detection_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "endpoint_detection_rules_optin" {
  source = "./modules/endpoint_detection_rules_optin"
  object_file = "${path.root}/objects/endpoint_detection_rules_optin.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "environment" {
  source = "./modules/environment"
  object_file = "${path.root}/objects/environment.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "eula_settings" {
  source = "./modules/eula_settings"
  object_file = "${path.root}/objects/eula_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "event_driven_ansible_connections" {
  source = "./modules/event_driven_ansible_connections"
  object_file = "${path.root}/objects/event_driven_ansible_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "extension_execution_controller" {
  source = "./modules/extension_execution_controller"
  object_file = "${path.root}/objects/extension_execution_controller.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "extension_execution_remote" {
  source = "./modules/extension_execution_remote"
  object_file = "${path.root}/objects/extension_execution_remote.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "failure_detection_parameters" {
  source = "./modules/failure_detection_parameters"
  object_file = "${path.root}/objects/failure_detection_parameters.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "failure_detection_rule_sets" {
  source = "./modules/failure_detection_rule_sets"
  object_file = "${path.root}/objects/failure_detection_rule_sets.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "failure_detection_rules" {
  source = "./modules/failure_detection_rules"
  object_file = "${path.root}/objects/failure_detection_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "frequent_issues" {
  source = "./modules/frequent_issues"
  object_file = "${path.root}/objects/frequent_issues.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "generic_relationships" {
  source = "./modules/generic_relationships"
  object_file = "${path.root}/objects/generic_relationships.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "generic_setting" {
  source = "./modules/generic_setting"
  object_file = "${path.root}/objects/generic_setting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "generic_types" {
  source = "./modules/generic_types"
  object_file = "${path.root}/objects/generic_types.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "geolocation" {
  source = "./modules/geolocation"
  object_file = "${path.root}/objects/geolocation.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "github_connection" {
  source = "./modules/github_connection"
  object_file = "${path.root}/objects/github_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "gitlab_connection" {
  source = "./modules/gitlab_connection"
  object_file = "${path.root}/objects/gitlab_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "grail_metrics_allowall" {
  source = "./modules/grail_metrics_allowall"
  object_file = "${path.root}/objects/grail_metrics_allowall.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "grail_metrics_allowlist" {
  source = "./modules/grail_metrics_allowlist"
  object_file = "${path.root}/objects/grail_metrics_allowlist.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "grail_security_context" {
  source = "./modules/grail_security_context"
  object_file = "${path.root}/objects/grail_security_context.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "histogram_metrics" {
  source = "./modules/histogram_metrics"
  object_file = "${path.root}/objects/histogram_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_anomalies_v2" {
  source = "./modules/host_anomalies_v2"
  object_file = "${path.root}/objects/host_anomalies_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_monitoring" {
  source = "./modules/host_monitoring"
  object_file = "${path.root}/objects/host_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_monitoring_advanced" {
  source = "./modules/host_monitoring_advanced"
  object_file = "${path.root}/objects/host_monitoring_advanced.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_monitoring_mode" {
  source = "./modules/host_monitoring_mode"
  object_file = "${path.root}/objects/host_monitoring_mode.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_naming" {
  source = "./modules/host_naming"
  object_file = "${path.root}/objects/host_naming.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_process_group_monitoring" {
  source = "./modules/host_process_group_monitoring"
  object_file = "${path.root}/objects/host_process_group_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "http_monitor" {
  source = "./modules/http_monitor"
  object_file = "${path.root}/objects/http_monitor.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "http_monitor_cookies" {
  source = "./modules/http_monitor_cookies"
  object_file = "${path.root}/objects/http_monitor_cookies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "http_monitor_outage" {
  source = "./modules/http_monitor_outage"
  object_file = "${path.root}/objects/http_monitor_outage.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "http_monitor_performance" {
  source = "./modules/http_monitor_performance"
  object_file = "${path.root}/objects/http_monitor_performance.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "http_monitor_script" {
  source = "./modules/http_monitor_script"
  object_file = "${path.root}/objects/http_monitor_script.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "hub_extension_active_version" {
  source = "./modules/hub_extension_active_version"
  object_file = "${path.root}/objects/hub_extension_active_version.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "hub_extension_config" {
  source = "./modules/hub_extension_config"
  object_file = "${path.root}/objects/hub_extension_config.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "hub_permissions" {
  source = "./modules/hub_permissions"
  object_file = "${path.root}/objects/hub_permissions.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "hub_subscriptions" {
  source = "./modules/hub_subscriptions"
  object_file = "${path.root}/objects/hub_subscriptions.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ibm_mq_filters" {
  source = "./modules/ibm_mq_filters"
  object_file = "${path.root}/objects/ibm_mq_filters.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ims_bridges" {
  source = "./modules/ims_bridges"
  object_file = "${path.root}/objects/ims_bridges.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "infraops_app_feature_flags" {
  source = "./modules/infraops_app_feature_flags"
  object_file = "${path.root}/objects/infraops_app_feature_flags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "infraops_app_settings" {
  source = "./modules/infraops_app_settings"
  object_file = "${path.root}/objects/infraops_app_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ip_address_masking" {
  source = "./modules/ip_address_masking"
  object_file = "${path.root}/objects/ip_address_masking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "issue_tracking" {
  source = "./modules/issue_tracking"
  object_file = "${path.root}/objects/issue_tracking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "jenkins_connection" {
  source = "./modules/jenkins_connection"
  object_file = "${path.root}/objects/jenkins_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "jira_notification" {
  source = "./modules/jira_notification"
  object_file = "${path.root}/objects/jira_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "json_dashboard" {
  source = "./modules/json_dashboard"
  object_file = "${path.root}/objects/json_dashboard.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "json_dashboard_base" {
  source = "./modules/json_dashboard_base"
  object_file = "${path.root}/objects/json_dashboard_base.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_cluster_anomalies" {
  source = "./modules/k8s_cluster_anomalies"
  object_file = "${path.root}/objects/k8s_cluster_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_monitoring" {
  source = "./modules/k8s_monitoring"
  object_file = "${path.root}/objects/k8s_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_namespace_anomalies" {
  source = "./modules/k8s_namespace_anomalies"
  object_file = "${path.root}/objects/k8s_namespace_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_node_anomalies" {
  source = "./modules/k8s_node_anomalies"
  object_file = "${path.root}/objects/k8s_node_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_pvc_anomalies" {
  source = "./modules/k8s_pvc_anomalies"
  object_file = "${path.root}/objects/k8s_pvc_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "k8s_workload_anomalies" {
  source = "./modules/k8s_workload_anomalies"
  object_file = "${path.root}/objects/k8s_workload_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "key_requests" {
  source = "./modules/key_requests"
  object_file = "${path.root}/objects/key_requests.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "key_user_action" {
  source = "./modules/key_user_action"
  object_file = "${path.root}/objects/key_user_action.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "kubernetes" {
  source = "./modules/kubernetes"
  object_file = "${path.root}/objects/kubernetes.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "kubernetes_app" {
  source = "./modules/kubernetes_app"
  object_file = "${path.root}/objects/kubernetes_app.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "kubernetes_enrichment" {
  source = "./modules/kubernetes_enrichment"
  object_file = "${path.root}/objects/kubernetes_enrichment.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "kubernetes_spm" {
  source = "./modules/kubernetes_spm"
  object_file = "${path.root}/objects/kubernetes_spm.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "limit_outbound_connections" {
  source = "./modules/limit_outbound_connections"
  object_file = "${path.root}/objects/limit_outbound_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_agent_feature_flags" {
  source = "./modules/log_agent_feature_flags"
  object_file = "${path.root}/objects/log_agent_feature_flags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_buckets" {
  source = "./modules/log_buckets"
  object_file = "${path.root}/objects/log_buckets.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_custom_attribute" {
  source = "./modules/log_custom_attribute"
  object_file = "${path.root}/objects/log_custom_attribute.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_custom_source" {
  source = "./modules/log_custom_source"
  object_file = "${path.root}/objects/log_custom_source.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_debug_settings" {
  source = "./modules/log_debug_settings"
  object_file = "${path.root}/objects/log_debug_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_events" {
  source = "./modules/log_events"
  object_file = "${path.root}/objects/log_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_grail" {
  source = "./modules/log_grail"
  object_file = "${path.root}/objects/log_grail.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_metrics" {
  source = "./modules/log_metrics"
  object_file = "${path.root}/objects/log_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_oneagent" {
  source = "./modules/log_oneagent"
  object_file = "${path.root}/objects/log_oneagent.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_processing" {
  source = "./modules/log_processing"
  object_file = "${path.root}/objects/log_processing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_security_context" {
  source = "./modules/log_security_context"
  object_file = "${path.root}/objects/log_security_context.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_sensitive_data_masking" {
  source = "./modules/log_sensitive_data_masking"
  object_file = "${path.root}/objects/log_sensitive_data_masking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_storage" {
  source = "./modules/log_storage"
  object_file = "${path.root}/objects/log_storage.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_timestamp" {
  source = "./modules/log_timestamp"
  object_file = "${path.root}/objects/log_timestamp.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mainframe_transaction_monitoring" {
  source = "./modules/mainframe_transaction_monitoring"
  object_file = "${path.root}/objects/mainframe_transaction_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "maintenance" {
  source = "./modules/maintenance"
  object_file = "${path.root}/objects/maintenance.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_backup" {
  source = "./modules/managed_backup"
  object_file = "${path.root}/objects/managed_backup.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_internet_proxy" {
  source = "./modules/managed_internet_proxy"
  object_file = "${path.root}/objects/managed_internet_proxy.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_network_zones" {
  source = "./modules/managed_network_zones"
  object_file = "${path.root}/objects/managed_network_zones.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_preferences" {
  source = "./modules/managed_preferences"
  object_file = "${path.root}/objects/managed_preferences.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_public_endpoints" {
  source = "./modules/managed_public_endpoints"
  object_file = "${path.root}/objects/managed_public_endpoints.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_remote_access" {
  source = "./modules/managed_remote_access"
  object_file = "${path.root}/objects/managed_remote_access.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "managed_smtp" {
  source = "./modules/managed_smtp"
  object_file = "${path.root}/objects/managed_smtp.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "management_zone_v2" {
  source = "./modules/management_zone_v2"
  object_file = "${path.root}/objects/management_zone_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "metric_events" {
  source = "./modules/metric_events"
  object_file = "${path.root}/objects/metric_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "metric_metadata" {
  source = "./modules/metric_metadata"
  object_file = "${path.root}/objects/metric_metadata.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "metric_query" {
  source = "./modules/metric_query"
  object_file = "${path.root}/objects/metric_query.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mgmz_permission" {
  source = "./modules/mgmz_permission"
  object_file = "${path.root}/objects/mgmz_permission.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_app_anomalies" {
  source = "./modules/mobile_app_anomalies"
  object_file = "${path.root}/objects/mobile_app_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_app_crash_rate" {
  source = "./modules/mobile_app_crash_rate"
  object_file = "${path.root}/objects/mobile_app_crash_rate.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_app_enablement" {
  source = "./modules/mobile_app_enablement"
  object_file = "${path.root}/objects/mobile_app_enablement.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_app_key_performance" {
  source = "./modules/mobile_app_key_performance"
  object_file = "${path.root}/objects/mobile_app_key_performance.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_app_request_errors" {
  source = "./modules/mobile_app_request_errors"
  object_file = "${path.root}/objects/mobile_app_request_errors.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_application" {
  source = "./modules/mobile_application"
  object_file = "${path.root}/objects/mobile_application.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "mobile_notifications" {
  source = "./modules/mobile_notifications"
  object_file = "${path.root}/objects/mobile_notifications.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_apache" {
  source = "./modules/monitored_technologies_apache"
  object_file = "${path.root}/objects/monitored_technologies_apache.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_dotnet" {
  source = "./modules/monitored_technologies_dotnet"
  object_file = "${path.root}/objects/monitored_technologies_dotnet.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_go" {
  source = "./modules/monitored_technologies_go"
  object_file = "${path.root}/objects/monitored_technologies_go.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_iis" {
  source = "./modules/monitored_technologies_iis"
  object_file = "${path.root}/objects/monitored_technologies_iis.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_java" {
  source = "./modules/monitored_technologies_java"
  object_file = "${path.root}/objects/monitored_technologies_java.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_nginx" {
  source = "./modules/monitored_technologies_nginx"
  object_file = "${path.root}/objects/monitored_technologies_nginx.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_nodejs" {
  source = "./modules/monitored_technologies_nodejs"
  object_file = "${path.root}/objects/monitored_technologies_nodejs.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_opentracing" {
  source = "./modules/monitored_technologies_opentracing"
  object_file = "${path.root}/objects/monitored_technologies_opentracing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_php" {
  source = "./modules/monitored_technologies_php"
  object_file = "${path.root}/objects/monitored_technologies_php.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_python" {
  source = "./modules/monitored_technologies_python"
  object_file = "${path.root}/objects/monitored_technologies_python.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_varnish" {
  source = "./modules/monitored_technologies_varnish"
  object_file = "${path.root}/objects/monitored_technologies_varnish.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "monitored_technologies_wsmb" {
  source = "./modules/monitored_technologies_wsmb"
  object_file = "${path.root}/objects/monitored_technologies_wsmb.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ms365_email_connection" {
  source = "./modules/ms365_email_connection"
  object_file = "${path.root}/objects/ms365_email_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "msentraid_connection" {
  source = "./modules/msentraid_connection"
  object_file = "${path.root}/objects/msentraid_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "msteams_connection" {
  source = "./modules/msteams_connection"
  object_file = "${path.root}/objects/msteams_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "muted_requests" {
  source = "./modules/muted_requests"
  object_file = "${path.root}/objects/muted_requests.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "nettracer" {
  source = "./modules/nettracer"
  object_file = "${path.root}/objects/nettracer.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "network_monitor" {
  source = "./modules/network_monitor"
  object_file = "${path.root}/objects/network_monitor.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "network_monitor_outage" {
  source = "./modules/network_monitor_outage"
  object_file = "${path.root}/objects/network_monitor_outage.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "network_traffic" {
  source = "./modules/network_traffic"
  object_file = "${path.root}/objects/network_traffic.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "network_zone" {
  source = "./modules/network_zone"
  object_file = "${path.root}/objects/network_zone.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "network_zones" {
  source = "./modules/network_zones"
  object_file = "${path.root}/objects/network_zones.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_default_mode" {
  source = "./modules/oneagent_default_mode"
  object_file = "${path.root}/objects/oneagent_default_mode.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_default_version" {
  source = "./modules/oneagent_default_version"
  object_file = "${path.root}/objects/oneagent_default_version.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
  object_file = "${path.root}/objects/oneagent_features.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_side_masking" {
  source = "./modules/oneagent_side_masking"
  object_file = "${path.root}/objects/oneagent_side_masking.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_updates" {
  source = "./modules/oneagent_updates"
  object_file = "${path.root}/objects/oneagent_updates.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_bizevents_ingestsources" {
  source = "./modules/openpipeline_v2_bizevents_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_bizevents_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_bizevents_pipelinegroups" {
  source = "./modules/openpipeline_v2_bizevents_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_bizevents_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_bizevents_pipelines" {
  source = "./modules/openpipeline_v2_bizevents_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_bizevents_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_bizevents_routing" {
  source = "./modules/openpipeline_v2_bizevents_routing"
  object_file = "${path.root}/objects/openpipeline_v2_bizevents_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_events_ingestsources" {
  source = "./modules/openpipeline_v2_davis_events_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_davis_events_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_events_pipelinegroups" {
  source = "./modules/openpipeline_v2_davis_events_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_davis_events_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_events_pipelines" {
  source = "./modules/openpipeline_v2_davis_events_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_davis_events_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_events_routing" {
  source = "./modules/openpipeline_v2_davis_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_davis_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_problems_ingestsources" {
  source = "./modules/openpipeline_v2_davis_problems_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_davis_problems_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_problems_pipelinegroups" {
  source = "./modules/openpipeline_v2_davis_problems_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_davis_problems_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_problems_pipelines" {
  source = "./modules/openpipeline_v2_davis_problems_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_davis_problems_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_problems_routing" {
  source = "./modules/openpipeline_v2_davis_problems_routing"
  object_file = "${path.root}/objects/openpipeline_v2_davis_problems_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_ingestsources" {
  source = "./modules/openpipeline_v2_events_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_events_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_pipelinegroups" {
  source = "./modules/openpipeline_v2_events_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_events_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_pipelines" {
  source = "./modules/openpipeline_v2_events_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_events_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_routing" {
  source = "./modules/openpipeline_v2_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_sdlc_ingestsources" {
  source = "./modules/openpipeline_v2_events_sdlc_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_events_sdlc_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_sdlc_pipelinegroups" {
  source = "./modules/openpipeline_v2_events_sdlc_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_events_sdlc_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_sdlc_pipelines" {
  source = "./modules/openpipeline_v2_events_sdlc_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_events_sdlc_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_sdlc_routing" {
  source = "./modules/openpipeline_v2_events_sdlc_routing"
  object_file = "${path.root}/objects/openpipeline_v2_events_sdlc_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_security_ingestsources" {
  source = "./modules/openpipeline_v2_events_security_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_events_security_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_security_pipelinegroups" {
  source = "./modules/openpipeline_v2_events_security_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_events_security_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_security_pipelines" {
  source = "./modules/openpipeline_v2_events_security_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_events_security_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_security_routing" {
  source = "./modules/openpipeline_v2_events_security_routing"
  object_file = "${path.root}/objects/openpipeline_v2_events_security_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_logs_ingestsources" {
  source = "./modules/openpipeline_v2_logs_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_logs_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_logs_pipelinegroups" {
  source = "./modules/openpipeline_v2_logs_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_logs_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_logs_pipelines" {
  source = "./modules/openpipeline_v2_logs_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_logs_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_logs_routing" {
  source = "./modules/openpipeline_v2_logs_routing"
  object_file = "${path.root}/objects/openpipeline_v2_logs_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_metrics_ingestsources" {
  source = "./modules/openpipeline_v2_metrics_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_metrics_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_metrics_pipelinegroups" {
  source = "./modules/openpipeline_v2_metrics_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_metrics_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_metrics_pipelines" {
  source = "./modules/openpipeline_v2_metrics_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_metrics_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_metrics_routing" {
  source = "./modules/openpipeline_v2_metrics_routing"
  object_file = "${path.root}/objects/openpipeline_v2_metrics_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_security_events_ingestsources" {
  source = "./modules/openpipeline_v2_security_events_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_security_events_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_security_events_pipelinegroups" {
  source = "./modules/openpipeline_v2_security_events_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_security_events_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_security_events_pipelines" {
  source = "./modules/openpipeline_v2_security_events_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_security_events_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_security_events_routing" {
  source = "./modules/openpipeline_v2_security_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_security_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_spans_ingestsources" {
  source = "./modules/openpipeline_v2_spans_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_spans_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_spans_pipelinegroups" {
  source = "./modules/openpipeline_v2_spans_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_spans_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_spans_pipelines" {
  source = "./modules/openpipeline_v2_spans_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_spans_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_spans_routing" {
  source = "./modules/openpipeline_v2_spans_routing"
  object_file = "${path.root}/objects/openpipeline_v2_spans_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_system_events_ingestsources" {
  source = "./modules/openpipeline_v2_system_events_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_system_events_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_system_events_pipelinegroups" {
  source = "./modules/openpipeline_v2_system_events_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_system_events_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_system_events_pipelines" {
  source = "./modules/openpipeline_v2_system_events_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_system_events_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_system_events_routing" {
  source = "./modules/openpipeline_v2_system_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_system_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_user_events_ingestsources" {
  source = "./modules/openpipeline_v2_user_events_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_user_events_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_user_events_pipelinegroups" {
  source = "./modules/openpipeline_v2_user_events_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_user_events_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_user_events_pipelines" {
  source = "./modules/openpipeline_v2_user_events_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_user_events_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_user_events_routing" {
  source = "./modules/openpipeline_v2_user_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_user_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_usersessions_ingestsources" {
  source = "./modules/openpipeline_v2_usersessions_ingestsources"
  object_file = "${path.root}/objects/openpipeline_v2_usersessions_ingestsources.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_usersessions_pipelinegroups" {
  source = "./modules/openpipeline_v2_usersessions_pipelinegroups"
  object_file = "${path.root}/objects/openpipeline_v2_usersessions_pipelinegroups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_usersessions_pipelines" {
  source = "./modules/openpipeline_v2_usersessions_pipelines"
  object_file = "${path.root}/objects/openpipeline_v2_usersessions_pipelines.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_usersessions_routing" {
  source = "./modules/openpipeline_v2_usersessions_routing"
  object_file = "${path.root}/objects/openpipeline_v2_usersessions_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "opentelemetry_metrics" {
  source = "./modules/opentelemetry_metrics"
  object_file = "${path.root}/objects/opentelemetry_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ops_genie_notification" {
  source = "./modules/ops_genie_notification"
  object_file = "${path.root}/objects/ops_genie_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "os_services" {
  source = "./modules/os_services"
  object_file = "${path.root}/objects/os_services.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ownership_config" {
  source = "./modules/ownership_config"
  object_file = "${path.root}/objects/ownership_config.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "ownership_teams" {
  source = "./modules/ownership_teams"
  object_file = "${path.root}/objects/ownership_teams.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "pager_duty_notification" {
  source = "./modules/pager_duty_notification"
  object_file = "${path.root}/objects/pager_duty_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "pagerduty_connection" {
  source = "./modules/pagerduty_connection"
  object_file = "${path.root}/objects/pagerduty_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "pg_alerting" {
  source = "./modules/pg_alerting"
  object_file = "${path.root}/objects/pg_alerting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "policy" {
  source = "./modules/policy"
  object_file = "${path.root}/objects/policy.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "policy_bindings" {
  source = "./modules/policy_bindings"
  object_file = "${path.root}/objects/policy_bindings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "problem_fields" {
  source = "./modules/problem_fields"
  object_file = "${path.root}/objects/problem_fields.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "problem_record_propagation_rules" {
  source = "./modules/problem_record_propagation_rules"
  object_file = "${path.root}/objects/problem_record_propagation_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_availability" {
  source = "./modules/process_availability"
  object_file = "${path.root}/objects/process_availability.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_detection" {
  source = "./modules/process_group_detection"
  object_file = "${path.root}/objects/process_group_detection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_detection_flags" {
  source = "./modules/process_group_detection_flags"
  object_file = "${path.root}/objects/process_group_detection_flags.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_monitoring" {
  source = "./modules/process_group_monitoring"
  object_file = "${path.root}/objects/process_group_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_rum" {
  source = "./modules/process_group_rum"
  object_file = "${path.root}/objects/process_group_rum.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_simple_detection" {
  source = "./modules/process_group_simple_detection"
  object_file = "${path.root}/objects/process_group_simple_detection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_grouping_rules" {
  source = "./modules/process_grouping_rules"
  object_file = "${path.root}/objects/process_grouping_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_monitoring" {
  source = "./modules/process_monitoring"
  object_file = "${path.root}/objects/process_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_monitoring_rule" {
  source = "./modules/process_monitoring_rule"
  object_file = "${path.root}/objects/process_monitoring_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_visibility" {
  source = "./modules/process_visibility"
  object_file = "${path.root}/objects/process_visibility.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "processgroup_naming" {
  source = "./modules/processgroup_naming"
  object_file = "${path.root}/objects/processgroup_naming.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "queue_manager" {
  source = "./modules/queue_manager"
  object_file = "${path.root}/objects/queue_manager.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "queue_sharing_groups" {
  source = "./modules/queue_sharing_groups"
  object_file = "${path.root}/objects/queue_sharing_groups.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "remote_environments" {
  source = "./modules/remote_environments"
  object_file = "${path.root}/objects/remote_environments.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "report" {
  source = "./modules/report"
  object_file = "${path.root}/objects/report.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "request_attribute" {
  source = "./modules/request_attribute"
  object_file = "${path.root}/objects/request_attribute.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "request_naming" {
  source = "./modules/request_naming"
  object_file = "${path.root}/objects/request_naming.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "request_namings" {
  source = "./modules/request_namings"
  object_file = "${path.root}/objects/request_namings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "resource_attributes" {
  source = "./modules/resource_attributes"
  object_file = "${path.root}/objects/resource_attributes.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rpc_based_sampling" {
  source = "./modules/rpc_based_sampling"
  object_file = "${path.root}/objects/rpc_based_sampling.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_advanced_correlation" {
  source = "./modules/rum_advanced_correlation"
  object_file = "${path.root}/objects/rum_advanced_correlation.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_host_headers" {
  source = "./modules/rum_host_headers"
  object_file = "${path.root}/objects/rum_host_headers.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_ip_determination" {
  source = "./modules/rum_ip_determination"
  object_file = "${path.root}/objects/rum_ip_determination.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_ip_locations" {
  source = "./modules/rum_ip_locations"
  object_file = "${path.root}/objects/rum_ip_locations.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_overload_prevention" {
  source = "./modules/rum_overload_prevention"
  object_file = "${path.root}/objects/rum_overload_prevention.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "rum_provider_breakdown" {
  source = "./modules/rum_provider_breakdown"
  object_file = "${path.root}/objects/rum_provider_breakdown.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "security_context" {
  source = "./modules/security_context"
  object_file = "${path.root}/objects/security_context.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_anomalies_v2" {
  source = "./modules/service_anomalies_v2"
  object_file = "${path.root}/objects/service_anomalies_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_detection_rules" {
  source = "./modules/service_detection_rules"
  object_file = "${path.root}/objects/service_detection_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_external_web_request" {
  source = "./modules/service_external_web_request"
  object_file = "${path.root}/objects/service_external_web_request.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_external_web_service" {
  source = "./modules/service_external_web_service"
  object_file = "${path.root}/objects/service_external_web_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_failure" {
  source = "./modules/service_failure"
  object_file = "${path.root}/objects/service_failure.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_full_web_request" {
  source = "./modules/service_full_web_request"
  object_file = "${path.root}/objects/service_full_web_request.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_full_web_service" {
  source = "./modules/service_full_web_service"
  object_file = "${path.root}/objects/service_full_web_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_http_failure" {
  source = "./modules/service_http_failure"
  object_file = "${path.root}/objects/service_http_failure.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_naming" {
  source = "./modules/service_naming"
  object_file = "${path.root}/objects/service_naming.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_now_notification" {
  source = "./modules/service_now_notification"
  object_file = "${path.root}/objects/service_now_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_splitting" {
  source = "./modules/service_splitting"
  object_file = "${path.root}/objects/service_splitting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "servicenow_connection" {
  source = "./modules/servicenow_connection"
  object_file = "${path.root}/objects/servicenow_connection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "session_replay_resource_capture" {
  source = "./modules/session_replay_resource_capture"
  object_file = "${path.root}/objects/session_replay_resource_capture.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "session_replay_web_privacy" {
  source = "./modules/session_replay_web_privacy"
  object_file = "${path.root}/objects/session_replay_web_privacy.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "site_reliability_guardian" {
  source = "./modules/site_reliability_guardian"
  object_file = "${path.root}/objects/site_reliability_guardian.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "slack_notification" {
  source = "./modules/slack_notification"
  object_file = "${path.root}/objects/slack_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "slo" {
  source = "./modules/slo"
  object_file = "${path.root}/objects/slo.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "slo_normalization" {
  source = "./modules/slo_normalization"
  object_file = "${path.root}/objects/slo_normalization.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "slo_v2" {
  source = "./modules/slo_v2"
  object_file = "${path.root}/objects/slo_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "span_attribute" {
  source = "./modules/span_attribute"
  object_file = "${path.root}/objects/span_attribute.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "span_capture_rule" {
  source = "./modules/span_capture_rule"
  object_file = "${path.root}/objects/span_capture_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "span_context_propagation" {
  source = "./modules/span_context_propagation"
  object_file = "${path.root}/objects/span_context_propagation.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "span_entry_point" {
  source = "./modules/span_entry_point"
  object_file = "${path.root}/objects/span_entry_point.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "span_events" {
  source = "./modules/span_events"
  object_file = "${path.root}/objects/span_events.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "synthetic_availability" {
  source = "./modules/synthetic_availability"
  object_file = "${path.root}/objects/synthetic_availability.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "synthetic_location" {
  source = "./modules/synthetic_location"
  object_file = "${path.root}/objects/synthetic_location.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "token_settings" {
  source = "./modules/token_settings"
  object_file = "${path.root}/objects/token_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "transaction_start_filters" {
  source = "./modules/transaction_start_filters"
  object_file = "${path.root}/objects/transaction_start_filters.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "trello_notification" {
  source = "./modules/trello_notification"
  object_file = "${path.root}/objects/trello_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "unified_services_metrics" {
  source = "./modules/unified_services_metrics"
  object_file = "${path.root}/objects/unified_services_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "unified_services_opentel" {
  source = "./modules/unified_services_opentel"
  object_file = "${path.root}/objects/unified_services_opentel.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "update_windows" {
  source = "./modules/update_windows"
  object_file = "${path.root}/objects/update_windows.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "url_based_sampling" {
  source = "./modules/url_based_sampling"
  object_file = "${path.root}/objects/url_based_sampling.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "usability_analytics" {
  source = "./modules/usability_analytics"
  object_file = "${path.root}/objects/usability_analytics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user" {
  source = "./modules/user"
  object_file = "${path.root}/objects/user.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user_action_metrics" {
  source = "./modules/user_action_metrics"
  object_file = "${path.root}/objects/user_action_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user_experience_score" {
  source = "./modules/user_experience_score"
  object_file = "${path.root}/objects/user_experience_score.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user_group" {
  source = "./modules/user_group"
  object_file = "${path.root}/objects/user_group.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user_session_metrics" {
  source = "./modules/user_session_metrics"
  object_file = "${path.root}/objects/user_session_metrics.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "user_settings" {
  source = "./modules/user_settings"
  object_file = "${path.root}/objects/user_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "victor_ops_notification" {
  source = "./modules/victor_ops_notification"
  object_file = "${path.root}/objects/victor_ops_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vmware" {
  source = "./modules/vmware"
  object_file = "${path.root}/objects/vmware.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vmware_anomalies" {
  source = "./modules/vmware_anomalies"
  object_file = "${path.root}/objects/vmware_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_alerting" {
  source = "./modules/vulnerability_alerting"
  object_file = "${path.root}/objects/vulnerability_alerting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_code" {
  source = "./modules/vulnerability_code"
  object_file = "${path.root}/objects/vulnerability_code.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_settings" {
  source = "./modules/vulnerability_settings"
  object_file = "${path.root}/objects/vulnerability_settings.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_third_party" {
  source = "./modules/vulnerability_third_party"
  object_file = "${path.root}/objects/vulnerability_third_party.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_third_party_attr" {
  source = "./modules/vulnerability_third_party_attr"
  object_file = "${path.root}/objects/vulnerability_third_party_attr.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "vulnerability_third_party_k8s" {
  source = "./modules/vulnerability_third_party_k8s"
  object_file = "${path.root}/objects/vulnerability_third_party_k8s.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_anomalies" {
  source = "./modules/web_app_anomalies"
  object_file = "${path.root}/objects/web_app_anomalies.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_auto_injection" {
  source = "./modules/web_app_auto_injection"
  object_file = "${path.root}/objects/web_app_auto_injection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_beacon_endpoint" {
  source = "./modules/web_app_beacon_endpoint"
  object_file = "${path.root}/objects/web_app_beacon_endpoint.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_beacon_origins" {
  source = "./modules/web_app_beacon_origins"
  object_file = "${path.root}/objects/web_app_beacon_origins.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_custom_config_properties" {
  source = "./modules/web_app_custom_config_properties"
  object_file = "${path.root}/objects/web_app_custom_config_properties.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_custom_errors" {
  source = "./modules/web_app_custom_errors"
  object_file = "${path.root}/objects/web_app_custom_errors.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_custom_injection" {
  source = "./modules/web_app_custom_injection"
  object_file = "${path.root}/objects/web_app_custom_injection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_custom_prop_restrictions" {
  source = "./modules/web_app_custom_prop_restrictions"
  object_file = "${path.root}/objects/web_app_custom_prop_restrictions.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_enablement" {
  source = "./modules/web_app_enablement"
  object_file = "${path.root}/objects/web_app_enablement.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_injection_cookie" {
  source = "./modules/web_app_injection_cookie"
  object_file = "${path.root}/objects/web_app_injection_cookie.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_ip_address_exclusion" {
  source = "./modules/web_app_ip_address_exclusion"
  object_file = "${path.root}/objects/web_app_ip_address_exclusion.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_javascript_filename" {
  source = "./modules/web_app_javascript_filename"
  object_file = "${path.root}/objects/web_app_javascript_filename.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_javascript_updates" {
  source = "./modules/web_app_javascript_updates"
  object_file = "${path.root}/objects/web_app_javascript_updates.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_javascript_version" {
  source = "./modules/web_app_javascript_version"
  object_file = "${path.root}/objects/web_app_javascript_version.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_key_performance_custom" {
  source = "./modules/web_app_key_performance_custom"
  object_file = "${path.root}/objects/web_app_key_performance_custom.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_key_performance_load" {
  source = "./modules/web_app_key_performance_load"
  object_file = "${path.root}/objects/web_app_key_performance_load.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_key_performance_xhr" {
  source = "./modules/web_app_key_performance_xhr"
  object_file = "${path.root}/objects/web_app_key_performance_xhr.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_manual_insertion" {
  source = "./modules/web_app_manual_insertion"
  object_file = "${path.root}/objects/web_app_manual_insertion.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_request_errors" {
  source = "./modules/web_app_request_errors"
  object_file = "${path.root}/objects/web_app_request_errors.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_resource_cleanup" {
  source = "./modules/web_app_resource_cleanup"
  object_file = "${path.root}/objects/web_app_resource_cleanup.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_app_resource_types" {
  source = "./modules/web_app_resource_types"
  object_file = "${path.root}/objects/web_app_resource_types.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "web_application" {
  source = "./modules/web_application"
  object_file = "${path.root}/objects/web_application.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "webhook_notification" {
  source = "./modules/webhook_notification"
  object_file = "${path.root}/objects/webhook_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "xmatters_notification" {
  source = "./modules/xmatters_notification"
  object_file = "${path.root}/objects/xmatters_notification.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
