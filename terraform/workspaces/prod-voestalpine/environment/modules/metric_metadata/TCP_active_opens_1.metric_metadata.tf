resource "dynatrace_metric_metadata" "TCP_active_opens_1" {
  description        = "Number of transitions of TCP connections from CLOSED to SYN-SENT"
  display_name       = "TCP active opens"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.activeopens.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
