resource "dynatrace_metric_events" "F5_LTM-Virtual_Server_High_CPU" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.f5:virtualserver"
  summary                    = "F5 LTM - Virtual Server High CPU"
  event_template {
    description =<<-EOT
      Virtual Server {dims:virtualserver.name} on F5 Instace {dims:instance.name} registered high CPU.
      
      The {metricname} value of {severity} was {alert_condition} your custom threshold of {threshold}.
    EOT
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "F5 LTM - Virtual Server High CPU"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 80
    violating_samples  = 3
  }
  query_definition {
    type        = "METRIC_KEY"
    aggregation = "AVG"
    metric_key  = "com.dynatrace.extension.f5.bigip.virtualserver.stat.vs.usage.ratio1m"
    entity_filter {
      # dimension_key = ""
    }
  }
}
