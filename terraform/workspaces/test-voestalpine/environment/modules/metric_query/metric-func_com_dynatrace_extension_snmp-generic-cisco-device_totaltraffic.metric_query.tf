resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-cisco-device_totaltraffic" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.totaltraffic"
  metric_selector = "(com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.in.datagrams.count)+(com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.out.datagrams.count)+(com.dynatrace.extension.snmp-generic-cisco-device.tcp.hc.in.segs.count)+(com.dynatrace.extension.snmp-generic-cisco-device.tcp.hc.out.segs.count)"
}
