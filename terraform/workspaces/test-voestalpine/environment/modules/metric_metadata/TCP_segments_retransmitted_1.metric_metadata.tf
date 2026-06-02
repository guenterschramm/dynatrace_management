resource "dynatrace_metric_metadata" "TCP_segments_retransmitted_1" {
  description        = "Total number of segments retransmitted"
  display_name       = "TCP segments retransmitted"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.retrans.segs.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
