resource "dynatrace_metric_events" "F5_LTM-Pool_Member_is_unavailable" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.f5:pool:member"
  summary                    = "F5 LTM - Pool Member is unavailable"
  event_template {
    description =<<-EOT
      The F5 Pool Member {dims:pool_member.name} is unavailable. It was found in sate {dims:pool_member.availstate}.
      This pool member is part of Pool {dims:pool.name} and runs on BIG-IP device {dims:instance.name}.
    EOT
    davis_merge = true
    event_type  = "AVAILABILITY"
    title       = "F5 LTM - Pool Member is unavailable"
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
      com.dynatrace.extension.f5.bigip.pool_member.state:min:filter(and(eq("failover.state", "active(4)"),or(eq("pool_member.availstate", "red(3)"),eq("pool_member.availstate", "yellow(2)"))))
    EOT
  }
}
