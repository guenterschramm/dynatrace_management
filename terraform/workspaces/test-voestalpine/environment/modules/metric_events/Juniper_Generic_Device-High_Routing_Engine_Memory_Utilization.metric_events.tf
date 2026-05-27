resource "dynatrace_metric_events" "Juniper_Generic_Device-High_Routing_Engine_Memory_Utilization" {
  enabled = false
  summary = "Juniper Generic Device - High Routing Engine Memory Utilization"
  event_template {
    description = "The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}. This occurred on {dims:system.name} : {dims:routingengine}."
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "Juniper Generic Device - High Routing Engine Memory Utilization"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 80
    violating_samples  = 5
  }
  query_definition {
    type        = "METRIC_KEY"
    aggregation = "AVG"
    metric_key  = "com.dynatrace.extension.juniper.generic.routingengine.memory.utilization"
    entity_filter {
      # dimension_key = ""
    }
  }
}
