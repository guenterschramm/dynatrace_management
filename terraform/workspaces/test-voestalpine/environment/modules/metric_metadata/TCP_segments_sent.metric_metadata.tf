resource "dynatrace_metric_metadata" "TCP_segments_sent" {
  description        = "Total number of segments sent (excluding retransmissions)"
  display_name       = "TCP segments sent"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.hc.out.segs.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
