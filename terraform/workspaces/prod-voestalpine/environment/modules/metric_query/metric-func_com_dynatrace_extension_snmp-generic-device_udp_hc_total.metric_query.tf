resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-device_udp_hc_total" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-device.udp.hc.total"
  metric_selector = "(com.dynatrace.extension.snmp-generic-device.udp.hc.in.datagrams.count)+(com.dynatrace.extension.snmp-generic-device.udp.hc.out.datagrams.count)"
}
