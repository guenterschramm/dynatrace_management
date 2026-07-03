resource "dynatrace_metric_metadata" "APM_total_access_profile_sessions" {
  description        = "The total user sessions in the specified access profile. apmPaStatTotalSessions"
  display_name       = "APM total access profile sessions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.profile.total_sessions.count"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "APM" ]
  unit               = "Count"
}
