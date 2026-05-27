# Terraform workspace for Dynatrace environment: prod-environment
locals {
  environment_name = "prod-environment"
  environment_type = "production"
  workspace_scope = "environment"
}

module "activegate_updates" {
  source = "./modules/activegate_updates"
  object_file = "${path.root}/objects/activegate_updates.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "alerting" {
  source = "./modules/alerting"
  object_file = "${path.root}/objects/alerting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "api_detection" {
  source = "./modules/api_detection"
  object_file = "${path.root}/objects/api_detection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "application_detection_rule" {
  source = "./modules/application_detection_rule"
  object_file = "${path.root}/objects/application_detection_rule.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "application_error_rules" {
  source = "./modules/application_error_rules"
  object_file = "${path.root}/objects/application_error_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "attribute_allow_list" {
  source = "./modules/attribute_allow_list"
  object_file = "${path.root}/objects/attribute_allow_list.json"
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

module "autotag_v2" {
  source = "./modules/autotag_v2"
  object_file = "${path.root}/objects/autotag_v2.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "aws_credentials" {
  source = "./modules/aws_credentials"
  object_file = "${path.root}/objects/aws_credentials.json"
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

module "business_events_capturing_variants" {
  source = "./modules/business_events_capturing_variants"
  object_file = "${path.root}/objects/business_events_capturing_variants.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "calculated_service_metric" {
  source = "./modules/calculated_service_metric"
  object_file = "${path.root}/objects/calculated_service_metric.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "cloudapp_workloaddetection" {
  source = "./modules/cloudapp_workloaddetection"
  object_file = "${path.root}/objects/cloudapp_workloaddetection.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "container_technology" {
  source = "./modules/container_technology"
  object_file = "${path.root}/objects/container_technology.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "credentials" {
  source = "./modules/credentials"
  object_file = "${path.root}/objects/credentials.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_app_enablement" {
  source = "./modules/custom_app_enablement"
  object_file = "${path.root}/objects/custom_app_enablement.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_service" {
  source = "./modules/custom_service"
  object_file = "${path.root}/objects/custom_service.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "custom_service_order" {
  source = "./modules/custom_service_order"
  object_file = "${path.root}/objects/custom_service_order.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "dashboards_general" {
  source = "./modules/dashboards_general"
  object_file = "${path.root}/objects/dashboards_general.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "data_privacy" {
  source = "./modules/data_privacy"
  object_file = "${path.root}/objects/data_privacy.json"
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

module "discovery_default_rules" {
  source = "./modules/discovery_default_rules"
  object_file = "${path.root}/objects/discovery_default_rules.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "disk_edge_anomaly_detectors" {
  source = "./modules/disk_edge_anomaly_detectors"
  object_file = "${path.root}/objects/disk_edge_anomaly_detectors.json"
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

module "generic_types" {
  source = "./modules/generic_types"
  object_file = "${path.root}/objects/generic_types.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "grail_security_context" {
  source = "./modules/grail_security_context"
  object_file = "${path.root}/objects/grail_security_context.json"
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

module "host_monitoring_mode" {
  source = "./modules/host_monitoring_mode"
  object_file = "${path.root}/objects/host_monitoring_mode.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "host_naming_order" {
  source = "./modules/host_naming_order"
  object_file = "${path.root}/objects/host_naming_order.json"
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

module "ip_address_masking" {
  source = "./modules/ip_address_masking"
  object_file = "${path.root}/objects/ip_address_masking.json"
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

module "limit_outbound_connections" {
  source = "./modules/limit_outbound_connections"
  object_file = "${path.root}/objects/limit_outbound_connections.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "log_buckets" {
  source = "./modules/log_buckets"
  object_file = "${path.root}/objects/log_buckets.json"
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

module "maintenance" {
  source = "./modules/maintenance"
  object_file = "${path.root}/objects/maintenance.json"
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

module "mobile_application" {
  source = "./modules/mobile_application"
  object_file = "${path.root}/objects/mobile_application.json"
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

module "network_zone" {
  source = "./modules/network_zone"
  object_file = "${path.root}/objects/network_zone.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
  object_file = "${path.root}/objects/oneagent_features.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "oneagent_updates" {
  source = "./modules/oneagent_updates"
  object_file = "${path.root}/objects/oneagent_updates.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_bizevents_routing" {
  source = "./modules/openpipeline_v2_bizevents_routing"
  object_file = "${path.root}/objects/openpipeline_v2_bizevents_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_events_routing" {
  source = "./modules/openpipeline_v2_davis_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_davis_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_davis_problems_routing" {
  source = "./modules/openpipeline_v2_davis_problems_routing"
  object_file = "${path.root}/objects/openpipeline_v2_davis_problems_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_events_routing" {
  source = "./modules/openpipeline_v2_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_logs_routing" {
  source = "./modules/openpipeline_v2_logs_routing"
  object_file = "${path.root}/objects/openpipeline_v2_logs_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_metrics_routing" {
  source = "./modules/openpipeline_v2_metrics_routing"
  object_file = "${path.root}/objects/openpipeline_v2_metrics_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_security_events_routing" {
  source = "./modules/openpipeline_v2_security_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_security_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_spans_routing" {
  source = "./modules/openpipeline_v2_spans_routing"
  object_file = "${path.root}/objects/openpipeline_v2_spans_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_system_events_routing" {
  source = "./modules/openpipeline_v2_system_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_system_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_user_events_routing" {
  source = "./modules/openpipeline_v2_user_events_routing"
  object_file = "${path.root}/objects/openpipeline_v2_user_events_routing.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "openpipeline_v2_usersessions_routing" {
  source = "./modules/openpipeline_v2_usersessions_routing"
  object_file = "${path.root}/objects/openpipeline_v2_usersessions_routing.json"
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

module "problem_fields" {
  source = "./modules/problem_fields"
  object_file = "${path.root}/objects/problem_fields.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_group_monitoring" {
  source = "./modules/process_group_monitoring"
  object_file = "${path.root}/objects/process_group_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_monitoring" {
  source = "./modules/process_monitoring"
  object_file = "${path.root}/objects/process_monitoring.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "process_visibility" {
  source = "./modules/process_visibility"
  object_file = "${path.root}/objects/process_visibility.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "processgroup_naming_order" {
  source = "./modules/processgroup_naming_order"
  object_file = "${path.root}/objects/processgroup_naming_order.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "request_attribute" {
  source = "./modules/request_attribute"
  object_file = "${path.root}/objects/request_attribute.json"
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

module "service_naming_order" {
  source = "./modules/service_naming_order"
  object_file = "${path.root}/objects/service_naming_order.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "service_splitting" {
  source = "./modules/service_splitting"
  object_file = "${path.root}/objects/service_splitting.json"
  environment_name = local.environment_name
  environment_type = local.environment_type
}

module "session_replay_web_privacy" {
  source = "./modules/session_replay_web_privacy"
  object_file = "${path.root}/objects/session_replay_web_privacy.json"
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

module "update_windows" {
  source = "./modules/update_windows"
  object_file = "${path.root}/objects/update_windows.json"
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

module "vmware" {
  source = "./modules/vmware"
  object_file = "${path.root}/objects/vmware.json"
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

# Dynatrace resources are attached in subsequent implementation steps.
# Example target domains: alerting profiles, settings objects, platform settings.
