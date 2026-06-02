resource "dynatrace_metric_metadata" "UDP_datagram_errors" {
  description        = "Number of received and not delivered UDP datagrams (other than no application at the destination port)"
  display_name       = "UDP datagram errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.udp.in.errors.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
