resource "dynatrace_metric_metadata" "TCP_resets_1" {
  description        = "Number of transitions of TCP connections from ESTABLISHED/CLOSE-WAIT to CLOSED"
  display_name       = "TCP resets"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.estab.resets.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
