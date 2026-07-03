resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_f5_bigip_sys_host_memory_used_percent" {
  metric_id       = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.memory.used.percent"
  metric_selector = "((com.dynatrace.extension.f5.bigip.sys.host.memory.used)/(com.dynatrace.extension.f5.bigip.sys.host.memory.total))*(100)"
}
