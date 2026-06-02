resource "dynatrace_metric_metadata" "UDP_datagrams_received" {
  description        = "Total number of UDP datagrams received"
  display_name       = "UDP datagrams received"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.udp.hc.in.datagrams.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
