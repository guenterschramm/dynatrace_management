resource "dynatrace_metric_metadata" "TCP_segments_retransmitted" {
  description        = "Total number of segments retransmitted"
  display_name       = "TCP segments retransmitted"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.retrans.segs.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
