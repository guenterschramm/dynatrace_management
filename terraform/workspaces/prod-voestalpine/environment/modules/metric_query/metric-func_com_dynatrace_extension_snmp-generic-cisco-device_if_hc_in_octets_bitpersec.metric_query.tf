resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-cisco-device_if_hc_in_octets_bitpersec" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-cisco-device.if.hc.in.octets.bitpersec"
  metric_selector = "((com.dynatrace.extension.snmp-generic-cisco-device.if.hc.in.octets.count) * (8)):rate(1s)"
}
