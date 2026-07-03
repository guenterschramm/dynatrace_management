resource "dynatrace_metric_metadata" "APM_active_system_sessions" {
  description        = "The total active user sessions in the system. apmAccessStatCurrentActiveSessions"
  display_name       = "APM active system sessions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.session.system_active.count"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "APM" ]
  unit               = "Count"
}
