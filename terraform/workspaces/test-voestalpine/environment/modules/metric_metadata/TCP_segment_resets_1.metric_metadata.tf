resource "dynatrace_metric_metadata" "TCP_segment_resets_1" {
  description        = "Number of TCP segments sent containing the RST flag"
  display_name       = "TCP segment resets"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.out.rsts.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
