resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-device_totaltraffic" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-device.totaltraffic"
  metric_selector = "(com.dynatrace.extension.snmp-generic-device.udp.hc.in.datagrams.count)+(com.dynatrace.extension.snmp-generic-device.udp.hc.out.datagrams.count)+(com.dynatrace.extension.snmp-generic-device.tcp.hc.in.segs.count)+(com.dynatrace.extension.snmp-generic-device.tcp.hc.out.segs.count)"
}
