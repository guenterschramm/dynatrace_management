resource "dynatrace_metric_metadata" "APM_active_access_profile_sessions" {
  description        = "The total active user sessions in the specified access profile. apmPaStatCurrentActiveSessions"
  display_name       = "APM active access profile sessions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.apm.profile.active_sessions.count"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "APM" ]
  unit               = "Count"
}
