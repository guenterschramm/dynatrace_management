resource "dynatrace_slo_v2" "SLO_SAP_Request_Time_Daily_Basis" {
  name              = "SLO SAP Request Time Daily Basis"
  enabled           = true
  evaluation_type   = "AGGREGATE"
  evaluation_window = "-24h to now"
  filter            =<<-EOT
    entityId("CUSTOM_APPLICATION-4D64D21BA28541F0"),type("CUSTOM_APPLICATION")
  EOT
  metric_expression =<<-EOT
    100*builtin:apps.other.requestTimes.osAndVersion:avg:partition(latency,value(good,lt(300))):filter(and(or(in("dt.entity.device_application",entitySelector("type(custom_application),entityName.equals(~"SAP_Gui_TPI~")"))))):splitBy()/builtin:apps.other.requestTimes.osAndVersion:avg:filter(and(or(in("dt.entity.device_application",entitySelector("type(custom_application),entityName.equals(~"SAP_Gui_TPI~")"))))):splitBy()
  EOT
  metric_name       = "slo_sap_request_time_daily_basis"
  target_success    = 90
  target_warning    = 95
  error_budget_burn_rate {
    burn_rate_visualization_enabled = true
    fast_burn_threshold             = 10
  }
}
