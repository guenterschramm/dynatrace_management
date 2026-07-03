resource "dynatrace_hub_extension_config" "com_dynatrace_custom_python-certificate-monitor_3" {
  name                = "com.dynatrace.custom.python-certificate-monitor"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-76B585663184C4C0"
  # management_zone   = ""
  scope               = "HOST_GROUP-76B585663184C4C0"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "PAM SSL Certificate",
      "enabled": true,
      "featureSets": [
        "enhanced_metric"
      ],
      "pythonLocal": {
        "additional_sni": {
          "additional_sni_bool": false
        },
        "advanced_alert_configuration": {
          "enable_alert_creation": true,
          "expired_certificate_threshold": 7,
          "raise_domain_connection_alerts": false,
          "raise_oa_connection_alerts": false,
          "suppress_old_expired_certificate": true
        },
        "alerting_configuration": {
          "check_interval": 1,
          "days_event_stage_1": 30,
          "days_event_stage_2": 10,
          "timeout_bool": false
        },
        "check_hosts": {
          "check_host_domain": false
        },
        "debug": false,
        "enable_ua_and_metrics": {
          "enable_ua_and_metrics": true
        },
        "filter_technologies": {
          "filter_technologies": false
        },
        "log_event_interval": {
          "log_event_interval_bool": false
        },
        "port_range": {
          "customize_port_range": false
        }
      },
      "version": "2.0.0"
    })
}
