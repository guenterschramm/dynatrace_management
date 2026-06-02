resource "dynatrace_slo" "SLO-SAP_Backend-Avg_Task_Time-Daily_Basis" {
  name              = "SLO - SAP Backend - Avg Task Time - Daily Basis"
  description       = "SAP - Average Task Time evaluated at daily basis"
  evaluation        = "AGGREGATE"
  filter            =<<-EOT
    type("CUSTOM_DEVICE"),entityId("CUSTOM_DEVICE-743AD6CEF2EAC412")
  EOT
  metric_expression =<<-EOT
    (ext:tech.SAP.Task.avgtottime:avg:partition("latency",value("good",lt(3000))):splitBy():count:default(0))/(ext:tech.SAP.Task.avgtottime:avg:splitBy():count)*(100)
  EOT
  metric_name       = "slo_for_sap_gui_tpi_avgtasktime"
  target            = 70
  timeframe         = "-24h to now"
  warning           = 80
  error_budget_burn_rate {
    burn_rate_visualization_enabled = true
    fast_burn_threshold             = 10
  }
}
