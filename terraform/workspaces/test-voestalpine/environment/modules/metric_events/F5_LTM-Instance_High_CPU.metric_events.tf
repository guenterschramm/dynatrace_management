resource "dynatrace_metric_events" "F5_LTM-Instance_High_CPU" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.f5:instance"
  summary                    = "F5 LTM - Instance High CPU"
  event_template {
    description =<<-EOT
      F5 Instance {dims:instance.name} registered high CPU usage.
      
      The total CPU utilization value of {severity} was {alert_condition} your custom threshold of {threshold}.
    EOT
    davis_merge = true
    event_type  = "RESOURCE"
    title       = "F5 LTM - Instance High CPU"
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
    type            = "METRIC_SELECTOR"
    metric_selector = "100-(com.dynatrace.extension.f5.bigip.sys.global.host.cpu.idle1m)"
  }
}
