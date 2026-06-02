resource "dynatrace_metric_metadata" "UDP_datagrams_received_without_port_1" {
  description        = "Number of received UDP datagrams (no application at the destination port)"
  display_name       = "UDP datagrams received without port"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.udp.noports.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
