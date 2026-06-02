resource "dynatrace_metric_query" "metric-func_slo_normalizedErrorBudget_slo_sap_request_time_daily_basis" {
  metric_id       = "metric-func:slo.normalizedErrorBudget.slo_sap_request_time_daily_basis"
  metric_selector =<<-EOT
    (((100*builtin:apps.other.requestTimes.osAndVersion:filter(in("dt.entity.device_application",entitySelector("entityId(~"CUSTOM_APPLICATION-4D64D21BA28541F0~"),type(~"CUSTOM_APPLICATION~")"))):avg:partition(latency,value(good,lt(300))):filter(and(or(in("dt.entity.device_application",entitySelector("type(custom_application),entityName.equals(~"SAP_Gui_TPI~")"))))):splitBy()/builtin:apps.other.requestTimes.osAndVersion:filter(in("dt.entity.device_application",entitySelector("entityId(~"CUSTOM_APPLICATION-4D64D21BA28541F0~"),type(~"CUSTOM_APPLICATION~")"))):avg:filter(and(or(in("dt.entity.device_application",entitySelector("type(custom_application),entityName.equals(~"SAP_Gui_TPI~")"))))):splitBy()) - (90.0)) / ((100) - (90.0))) * 100
  EOT
}
