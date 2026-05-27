resource "dynatrace_metric_events" "Juniper_Generic_Device-High_Interface_Incoming_Errors" {
  enabled = false
  summary = "Juniper Generic Device - High Interface Incoming Errors"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}. This occurred on {dims:system.name} on interface: {dims:if.descr}."
    davis_merge = true
    event_type  = "ERROR"
    title       = "Juniper Generic Device - High Interface Incoming Errors"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 1000
    violating_samples  = 5
  }
  query_definition {
    type        = "METRIC_KEY"
    aggregation = "VALUE"
    metric_key  = "com.dynatrace.extension.juniper.generic.if.in.err.count"
    entity_filter {
      # dimension_key = ""
    }
  }
}
