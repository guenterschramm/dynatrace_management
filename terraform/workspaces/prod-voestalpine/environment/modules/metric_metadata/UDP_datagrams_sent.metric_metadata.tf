resource "dynatrace_metric_metadata" "UDP_datagrams_sent" {
  description        = "Total number of UDP datagrams sent"
  display_name       = "UDP datagrams sent"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.udp.hc.out.datagrams.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
