resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-cisco-device_udp_hc_total" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.total"
  metric_selector = "(com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.in.datagrams.count)+(com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.out.datagrams.count)"
}
