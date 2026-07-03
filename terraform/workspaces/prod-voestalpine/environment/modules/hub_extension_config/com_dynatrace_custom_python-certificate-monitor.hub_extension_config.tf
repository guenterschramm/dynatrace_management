resource "dynatrace_hub_extension_config" "com_dynatrace_custom_python-certificate-monitor" {
  name                = "com.dynatrace.custom.python-certificate-monitor"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-F8254B0A4393DA8D"
  # management_zone   = ""
  scope               = "HOST_GROUP-F8254B0A4393DA8D"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "Bee4IT SSL Certificate",
      "enabled": true,
      "featureSets": [
        "enhanced_metric"
      ],
      "pythonLocal": {
        "active_port_discovery": {
          "enable_active_port_discovery": true
        },
        "additional_sni": {
          "additional_sni_bool": false
        },
        "advanced_alert_configuration": {
          "enable_alert_creation": true,
          "expired_certificate_threshold": 7,
          "suppress_old_expired_certificate": true
        },
        "alerting_configuration": {
          "check_interval": 1,
          "days_event_stage_1": 30,
          "days_event_stage_2": 10
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
