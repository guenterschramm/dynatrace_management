resource "dynatrace_metric_metadata" "TCP_connections" {
  description        = "Number of TCP connections in the ESTABLISHED/CLOSE-WAIT state"
  display_name       = "TCP connections"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.curr.estab"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
