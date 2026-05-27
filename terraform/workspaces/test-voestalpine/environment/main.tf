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

module "builtin_process_monitoring" {
  source = "./modules/builtin_process_monitoring"
}

module "business_events_capturing_variants" {
  source = "./modules/business_events_capturing_variants"
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

module "custom_service_order" {
  source = "./modules/custom_service_order"
}

module "custom_units" {
  source = "./modules/custom_units"
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

module "disk_analytics" {
  source = "./modules/disk_analytics"
}

module "disk_edge_anomaly_detectors" {
  source = "./modules/disk_edge_anomaly_detectors"
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

module "hub_extension_active_version" {
  source = "./modules/hub_extension_active_version"
}

module "k8s_cluster_anomalies" {
  source = "./modules/k8s_cluster_anomalies"
}

module "k8s_node_anomalies" {
  source = "./modules/k8s_node_anomalies"
}

module "k8s_pvc_anomalies" {
  source = "./modules/k8s_pvc_anomalies"
}

module "k8s_workload_anomalies" {
  source = "./modules/k8s_workload_anomalies"
}

module "key_user_action" {
  source = "./modules/key_user_action"
}

module "log_buckets" {
  source = "./modules/log_buckets"
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

module "maintenance" {
  source = "./modules/maintenance"
}

module "management_zone_v2" {
  source = "./modules/management_zone_v2"
}

module "metric_events" {
  source = "./modules/metric_events"
}

module "monitored_technologies_php" {
  source = "./modules/monitored_technologies_php"
}

module "nettracer" {
  source = "./modules/nettracer"
}

module "network_monitor" {
  source = "./modules/network_monitor"
}

module "network_zone" {
  source = "./modules/network_zone"
}

module "network_zones" {
  source = "./modules/network_zones"
}

module "oneagent_features" {
  source = "./modules/oneagent_features"
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

module "openpipeline_v2_logs_ingestsources" {
  source = "./modules/openpipeline_v2_logs_ingestsources"
}

module "openpipeline_v2_logs_pipelines" {
  source = "./modules/openpipeline_v2_logs_pipelines"
}

module "openpipeline_v2_logs_routing" {
  source = "./modules/openpipeline_v2_logs_routing"
}

module "openpipeline_v2_metrics_ingestsources" {
  source = "./modules/openpipeline_v2_metrics_ingestsources"
}

module "openpipeline_v2_metrics_pipelines" {
  source = "./modules/openpipeline_v2_metrics_pipelines"
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

module "os_services" {
  source = "./modules/os_services"
}

module "ownership_config" {
  source = "./modules/ownership_config"
}

module "problem_fields" {
  source = "./modules/problem_fields"
}

module "process_monitoring" {
  source = "./modules/process_monitoring"
}

module "processgroup_naming_order" {
  source = "./modules/processgroup_naming_order"
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

module "service_anomalies_v2" {
  source = "./modules/service_anomalies_v2"
}

module "service_detection_rules" {
  source = "./modules/service_detection_rules"
}

module "service_naming_order" {
  source = "./modules/service_naming_order"
}

module "service_splitting" {
  source = "./modules/service_splitting"
}

module "span_attribute" {
  source = "./modules/span_attribute"
}

module "span_entry_point" {
  source = "./modules/span_entry_point"
}

module "span_events" {
  source = "./modules/span_events"
}

module "synthetic_location" {
  source = "./modules/synthetic_location"
}

module "vmware" {
  source = "./modules/vmware"
}

module "web_app_auto_injection" {
  source = "./modules/web_app_auto_injection"
}

module "web_app_enablement" {
  source = "./modules/web_app_enablement"
}

module "web_app_manual_insertion" {
  source = "./modules/web_app_manual_insertion"
}

module "web_application" {
  source = "./modules/web_application"
}

