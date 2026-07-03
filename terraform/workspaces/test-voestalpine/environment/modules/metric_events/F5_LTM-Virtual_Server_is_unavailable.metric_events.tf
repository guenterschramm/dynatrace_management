resource "dynatrace_metric_events" "F5_LTM-Virtual_Server_is_unavailable" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.f5:virtualserver"
  summary                    = "F5 LTM - Virtual Server is unavailable"
  event_template {
    description =<<-EOT
      The F5 Virtual Server {dims:virtualserver.name} is unavailable. It was found in sate {dims:virtualserver.availstate}.
      This Virtual Server runs on BIG-IP device {dims:instance.name}.
    EOT
    davis_merge = true
    event_type  = "AVAILABILITY"
    title       = "F5 LTM - Virtual Server is unavailable"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 0
    violating_samples  = 3
  }
  query_definition {
    type            = "METRIC_SELECTOR"
    metric_selector =<<-EOT
      com.dynatrace.extension.f5.bigip.virtualserver.state:min:filter(and(eq("failover.state", "active(4)"), or(eq("virtualserver.availstate","red(3)"),eq("virtualserver.availstate","yellow(2)"))))
    EOT
  }
}
