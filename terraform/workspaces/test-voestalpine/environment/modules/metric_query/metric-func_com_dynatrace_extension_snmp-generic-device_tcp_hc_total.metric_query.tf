resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-device_tcp_hc_total" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-device.tcp.hc.total"
  metric_selector = "(com.dynatrace.extension.snmp-generic-device.tcp.hc.in.segs.count)+(com.dynatrace.extension.snmp-generic-device.tcp.hc.out.segs.count)"
}
