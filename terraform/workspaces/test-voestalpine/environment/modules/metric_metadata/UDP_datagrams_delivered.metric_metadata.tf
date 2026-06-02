resource "dynatrace_metric_metadata" "UDP_datagrams_delivered" {
  description        = "Total number of UDP datagrams delivered"
  display_name       = "UDP datagrams delivered"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.udp.hc.in.datagrams.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
