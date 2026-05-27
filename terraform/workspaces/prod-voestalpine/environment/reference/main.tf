module "activegate_updates" {
  source = "./modules/activegate_updates"
}

module "alerting" {
  source = "./modules/alerting"
}

module "api_detection" {
  source = "./modules/api_detection"
}

module "application_detection_rule" {
  source = "./modules/application_detection_rule"
}

module "application_error_rules" {
  source = "./modules/application_error_rules"
}

module "attribute_allow_list" {
  source = "./modules/attribute_allow_list"
}

module "attribute_masking" {
  source = "./modules/attribute_masking"
}

module "attributes_preferences" {
  source = "./modules/attributes_preferences"
}

module "autotag_v2" {
  source = "./modules/autotag_v2"
}

module "aws_credentials" {
  source = "./modules/aws_credentials"
}

module "browser_monitor" {
  source = "./modules/browser_monitor"
}

module "browser_monitor_outage" {
  source = "./modules/browser_monitor_outage"
}

module "browser_monitor_performance" {
  source = "./modules/browser_monitor_performance"
}

module "business_events_capturing_variants" {
  source = "./modules/business_events_capturing_variants"
}

module "calculated_service_metric" {
  source = "./modules/calculated_service_metric"
}

module "cloudapp_workloaddetection" {
  source = "./modules/cloudapp_workloaddetection"
}

module "container_technology" {
  source = "./modules/container_technology"
}

module "credentials" {
  source = "./modules/credentials"
}

module "custom_app_enablement" {
  source = "./modules/custom_app_enablement"
}

module "custom_service" {
  source = "./modules/custom_service"
}

module "custom_service_order" {
  source = "./modules/custom_service_order"
}

module "dashboards_general" {
  source = "./modules/dashboards_general"
}

module "data_privacy" {
  source = "./modules/data_privacy"
}

module "davis_anomaly_detectors" {
  source = "./modules/davis_anomaly_detectors"
}

module "davis_copilot" {
  source = "./modules/davis_copilot"
}

module "discovery_default_rules" {
  source = "./modules/discovery_default_rules"
}

module "disk_edge_anomaly_detectors" {
  source = "./modules/disk_edge_anomaly_detectors"
}

module "email_notification" {
  source = "./modules/email_notification"
}

module "endpoint_detection_rules" {
  source = "./modules/endpoint_detection_rules"
}

module "endpoint_detection_rules_optin" {
  source = "./modules/endpoint_detection_rules_optin"
}

module "extension_execution_controller" {
  source = "./modules/extension_execution_controller"
}

module "extension_execution_remote" {
  source = "./modules/extension_execution_remote"
}

module "failure_detection_parameters" {
  source = "./modules/failure_detection_parameters"
}

module "failure_detection_rule_sets" {
  source = "./modules/failure_detection_rule_sets"
}

module "frequent_issues" {
  source = "./modules/frequent_issues"
}

module "generic_relationships" {
  source = "./modules/generic_relationships"
}

module "generic_types" {
  source = "./modules/generic_types"
}

module "grail_security_context" {
  source = "./modules/grail_security_context"
}

module "host_anomalies_v2" {
  source = "./modules/host_anomalies_v2"
}

module "host_monitoring" {
  source = "./modules/host_monitoring"
}

module "host_monitoring_mode" {
  source = "./modules/host_monitoring_mode"
}

module "host_naming_order" {
  source = "./modules/host_naming_order"
}

module "host_process_group_monitoring" {
  source = "./modules/host_process_group_monitoring"
}

module "http_monitor" {
  source = "./modules/http_monitor"
}

module "http_monitor_outage" {
  source = "./modules/http_monitor_outage"
}

module "http_monitor_performance" {
  source = "./modules/http_monitor_performance"
}

module "hub_extension_active_version" {
  source = "./modules/hub_extension_active_version"
}

module "hub_permissions" {
  source = "./modules/hub_permissions"
}

module "hub_subscriptions" {
  source = "./modules/hub_subscriptions"
}

module "ip_address_masking" {
  source = "./modules/ip_address_masking"
}

module "k8s_cluster_anomalies" {
  source = "./modules/k8s_cluster_anomalies"
}

module "k8s_monitoring" {
  source = "./modules/k8s_monitoring"
}

module "k8s_namespace_anomalies" {
  source = "./modules/k8s_namespace_anomalies"
}

module "k8s_node_anomalies" {
  source = "./modules/k8s_node_anomalies"
}

module "k8s_workload_anomalies" {
  source = "./modules/k8s_workload_anomalies"
}

module "key_requests" {
  source = "./modules/key_requests"
}

module "key_user_action" {
  source = "./modules/key_user_action"
}

module "kubernetes" {
  source = "./modules/kubernetes"
}

module "kubernetes_app" {
  source = "./modules/kubernetes_app"
}

module "limit_outbound_connections" {
  source = "./modules/limit_outbound_connections"
}

module "log_buckets" {
  source = "./modules/log_buckets"
}

module "log_metrics" {
  source = "./modules/log_metrics"
}

module "log_oneagent" {
  source = "./modules/log_oneagent"
}

module "log_processing" {
  source = "./modules/log_processing"
}

module "log_sensitive_data_masking" {
  source = "./modules/log_sensitive_data_masking"
}

module "log_storage" {
  source = "./modules/log_storage"
}

module "log_timestamp" {
  source = "./modules/log_timestamp"
}

module "maintenance" {
  source = "./modules/maintenance"
}

module "management_zone_v2" {
  source = "./modules/management_zone_v2"
}

module "metric_events" {
  source = "./modules/metric_events"
}

module "mobile_application" {
  source = "./modules/mobile_application"
}

module "muted_requests" {
  source = "./modules/muted_requests"
}

module "nettracer" {
  source = "./modules/nettracer"
}

module "network_monitor" {
  source = "./modules/network_monitor"
}

module "network_monitor_outage" {
  source = "./modules/network_monitor_outage"
}

module "network_zone" {
  source = "./modules/network_zone"
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
}

module "oneagent_updates" {
  source = "./modules/oneagent_updates"
}

module "openpipeline_v2_bizevents_routing" {
  source = "./modules/openpipeline_v2_bizevents_routing"
}

module "openpipeline_v2_davis_events_routing" {
  source = "./modules/openpipeline_v2_davis_events_routing"
}

module "openpipeline_v2_davis_problems_routing" {
  source = "./modules/openpipeline_v2_davis_problems_routing"
}

module "openpipeline_v2_events_routing" {
  source = "./modules/openpipeline_v2_events_routing"
}

module "openpipeline_v2_logs_routing" {
  source = "./modules/openpipeline_v2_logs_routing"
}

module "openpipeline_v2_metrics_routing" {
  source = "./modules/openpipeline_v2_metrics_routing"
}

module "openpipeline_v2_security_events_routing" {
  source = "./modules/openpipeline_v2_security_events_routing"
}

module "openpipeline_v2_spans_routing" {
  source = "./modules/openpipeline_v2_spans_routing"
}

module "openpipeline_v2_system_events_routing" {
  source = "./modules/openpipeline_v2_system_events_routing"
}

module "openpipeline_v2_user_events_routing" {
  source = "./modules/openpipeline_v2_user_events_routing"
}

module "openpipeline_v2_usersessions_routing" {
  source = "./modules/openpipeline_v2_usersessions_routing"
}

module "os_services" {
  source = "./modules/os_services"
}

module "ownership_config" {
  source = "./modules/ownership_config"
}

module "ownership_teams" {
  source = "./modules/ownership_teams"
}

module "problem_fields" {
  source = "./modules/problem_fields"
}

module "process_group_monitoring" {
  source = "./modules/process_group_monitoring"
}

module "process_monitoring" {
  source = "./modules/process_monitoring"
}

module "process_visibility" {
  source = "./modules/process_visibility"
}

module "processgroup_naming_order" {
  source = "./modules/processgroup_naming_order"
}

module "request_attribute" {
  source = "./modules/request_attribute"
}

module "request_namings" {
  source = "./modules/request_namings"
}

module "resource_attributes" {
  source = "./modules/resource_attributes"
}

module "rum_host_headers" {
  source = "./modules/rum_host_headers"
}

module "rum_ip_determination" {
  source = "./modules/rum_ip_determination"
}

module "rum_ip_locations" {
  source = "./modules/rum_ip_locations"
}

module "security_context" {
  source = "./modules/security_context"
}

module "service_anomalies_v2" {
  source = "./modules/service_anomalies_v2"
}

module "service_detection_rules" {
  source = "./modules/service_detection_rules"
}

module "service_external_web_request" {
  source = "./modules/service_external_web_request"
}

module "service_http_failure" {
  source = "./modules/service_http_failure"
}

module "service_naming" {
  source = "./modules/service_naming"
}

module "service_naming_order" {
  source = "./modules/service_naming_order"
}

module "service_splitting" {
  source = "./modules/service_splitting"
}

module "session_replay_web_privacy" {
  source = "./modules/session_replay_web_privacy"
}

module "slo_v2" {
  source = "./modules/slo_v2"
}

module "span_attribute" {
  source = "./modules/span_attribute"
}

module "span_context_propagation" {
  source = "./modules/span_context_propagation"
}

module "span_entry_point" {
  source = "./modules/span_entry_point"
}

module "span_events" {
  source = "./modules/span_events"
}

module "synthetic_availability" {
  source = "./modules/synthetic_availability"
}

module "synthetic_location" {
  source = "./modules/synthetic_location"
}

module "update_windows" {
  source = "./modules/update_windows"
}

module "user_action_metrics" {
  source = "./modules/user_action_metrics"
}

module "user_experience_score" {
  source = "./modules/user_experience_score"
}

module "vmware" {
  source = "./modules/vmware"
}

module "web_app_anomalies" {
  source = "./modules/web_app_anomalies"
}

module "web_app_auto_injection" {
  source = "./modules/web_app_auto_injection"
}

module "web_app_beacon_endpoint" {
  source = "./modules/web_app_beacon_endpoint"
}

module "web_app_enablement" {
  source = "./modules/web_app_enablement"
}

module "web_app_injection_cookie" {
  source = "./modules/web_app_injection_cookie"
}

module "web_app_ip_address_exclusion" {
  source = "./modules/web_app_ip_address_exclusion"
}

module "web_app_key_performance_custom" {
  source = "./modules/web_app_key_performance_custom"
}

module "web_app_key_performance_load" {
  source = "./modules/web_app_key_performance_load"
}

module "web_app_key_performance_xhr" {
  source = "./modules/web_app_key_performance_xhr"
}

module "web_app_manual_insertion" {
  source = "./modules/web_app_manual_insertion"
}

module "web_application" {
  source = "./modules/web_application"
}

module "webhook_notification" {
  source = "./modules/webhook_notification"
}

