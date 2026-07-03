resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_f5_bigip_apm_license_usage" {
  metric_id       = "metric-func:com.dynatrace.extension.f5.bigip.apm.license_usage"
  metric_selector = "((com.dynatrace.extension.f5.bigip.apm.current_conns)/(com.dynatrace.extension.f5.bigip.apm.total_licenses))*(100)"
}
