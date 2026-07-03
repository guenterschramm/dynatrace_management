resource "dynatrace_metric_metadata" "APM_total_system_sessions" {
  description        = "The total sessions created in the system. apmAccessStatTotalSessions"
  display_name       = "APM total system sessions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.session.system_total"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "APM" ]
  unit               = "Count"
}
