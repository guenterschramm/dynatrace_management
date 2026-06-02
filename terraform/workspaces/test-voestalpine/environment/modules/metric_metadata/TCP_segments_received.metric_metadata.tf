resource "dynatrace_metric_metadata" "TCP_segments_received" {
  description        = "Total number of segments received (including errors)"
  display_name       = "TCP segments received"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.hc.in.segs.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
