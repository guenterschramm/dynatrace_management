resource "dynatrace_metric_events" "High_outbound_bandwidth_utilization" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_device_interface"
  summary                    = "High outbound bandwidth utilization"
  event_template {
    description   = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}."
    # davis_merge = false
    event_type    = "CUSTOM_ALERT"
    title         = "High outbound bandwidth utilization"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 90
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector = "func:com.dynatrace.extension.snmp-generic-device.if.out.bandwidth"
  }
}
