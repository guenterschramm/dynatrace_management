resource "dynatrace_metric_metadata" "TCP_segment_resets" {
  description        = "Number of TCP segments sent containing the RST flag"
  display_name       = "TCP segment resets"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.out.rsts.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
