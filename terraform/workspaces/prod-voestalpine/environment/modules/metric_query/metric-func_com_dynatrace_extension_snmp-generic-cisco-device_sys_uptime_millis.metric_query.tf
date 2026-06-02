resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-cisco-device_sys_uptime_millis" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.sys.uptime.millis"
  metric_selector = "(com.dynatrace.extension.snmp-generic-cisco-device.sys.uptime) * (10)"
}
