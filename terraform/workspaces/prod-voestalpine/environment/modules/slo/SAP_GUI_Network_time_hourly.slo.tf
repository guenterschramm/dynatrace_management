resource "dynatrace_slo" "SAP_GUI_Network_time_hourly" {
  name              = "SAP GUI Network time  hourly"
  evaluation        = "AGGREGATE"
  filter            = "entityId(\"CUSTOM_DEVICE-743AD6CEF2EAC412\")"
  metric_expression =<<-EOT
    (ext:tech.SAP.Task.avgtottime:avg:partition("latency",value("good",lt(1500))):splitBy():count:default(0))/(ext:tech.SAP.Task.avgtottime:avg:splitBy():count)*(100)
  EOT
  metric_name       = "sap_gui_network_time_hourly"
  target            = 70
  timeframe         = "-1h"
  warning           = 75
  error_budget_burn_rate {
    burn_rate_visualization_enabled = true
    fast_burn_threshold             = 10
  }
}
