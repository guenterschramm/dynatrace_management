resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_snmp-generic-device_if_hc_out_octets_bitpersec" {
  metric_id       = "metric-func:com.dynatrace.extension.snmp-generic-device.if.hc.out.octets.bitpersec"
  metric_selector = "((com.dynatrace.extension.snmp-generic-device.if.hc.out.octets.count) * (8)):rate(1s)"
}
