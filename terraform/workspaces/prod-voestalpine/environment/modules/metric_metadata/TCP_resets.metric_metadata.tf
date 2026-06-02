resource "dynatrace_metric_metadata" "TCP_resets" {
  description        = "Number of transitions of TCP connections from ESTABLISHED/CLOSE-WAIT to CLOSED"
  display_name       = "TCP resets"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.tcp.estab.resets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
