resource "dynatrace_metric_query" "metric-func_slo_errorBudgetBurnRate_sap_gui_network_time_hourly" {
  metric_id       = "metric-func:slo.errorBudgetBurnRate.sap_gui_network_time_hourly"
  metric_selector =<<-EOT
    ((100) - ((ext:tech.SAP.Task.avgtottime:filter(in("dt.entity.custom_device",entitySelector("entityId(~"CUSTOM_DEVICE-743AD6CEF2EAC412~")"))):avg:partition(latency,value(good,lt(1500))):splitBy():count:default(0))/(ext:tech.SAP.Task.avgtottime:filter(in("dt.entity.custom_device",entitySelector("entityId(~"CUSTOM_DEVICE-743AD6CEF2EAC412~")"))):avg:splitBy():count)*(100))) / ((100) - (70.0))
  EOT
}
