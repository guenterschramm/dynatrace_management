resource "dynatrace_metric_events" "Juniper_Generic_Device-High_TCP_Attempt_Fails_Connections" {
  enabled = false
  summary = "Juniper Generic Device - High TCP Attempt Fails Connections"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}. This occurred on {dims:system.name}."
    davis_merge = true
    event_type  = "ERROR"
    title       = "Juniper Generic Device - High TCP Attempt Fails Connections"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 100
    violating_samples  = 5
  }
  query_definition {
    type        = "METRIC_KEY"
    aggregation = "VALUE"
    metric_key  = "com.dynatrace.extension.juniper.generic.device.tcp.conn.attempt_fails.count"
    entity_filter {
      # dimension_key = ""
    }
  }
}
