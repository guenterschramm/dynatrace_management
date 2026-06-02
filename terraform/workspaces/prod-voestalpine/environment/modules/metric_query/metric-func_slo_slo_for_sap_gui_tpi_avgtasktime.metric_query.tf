resource "dynatrace_metric_query" "metric-func_slo_slo_for_sap_gui_tpi_avgtasktime" {
  metric_id       = "metric-func:slo.slo_for_sap_gui_tpi_avgtasktime"
  metric_selector =<<-EOT
    (ext:tech.SAP.Task.avgtottime:filter(in("dt.entity.custom_device",entitySelector("type(~"CUSTOM_DEVICE~"),entityId(~"CUSTOM_DEVICE-743AD6CEF2EAC412~")"))):avg:partition(latency,value(good,lt(3000))):splitBy():count:default(0))/(ext:tech.SAP.Task.avgtottime:filter(in("dt.entity.custom_device",entitySelector("type(~"CUSTOM_DEVICE~"),entityId(~"CUSTOM_DEVICE-743AD6CEF2EAC412~")"))):avg:splitBy():count)*(100)
  EOT
}
