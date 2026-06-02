resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-cisco-device_if_bandwidth" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.if.bandwidth"
  metric_selector = "((((((com.dynatrace.extension.snmp-generic-cisco-device.if.hc.in.octets.count) * (8)):rate(1s))+(((com.dynatrace.extension.snmp-generic-cisco-device.if.hc.out.octets.count) * (8)):rate(1s)))/((com.dynatrace.extension.snmp-generic-cisco-device.if.highspeed) * 1000000)) * (100))"
}
