resource "dynatrace_metric_metadata" "Inbound_errors_1" {
  description        = "Number of inbound packets/transmission units with errors"
  display_name       = "Inbound errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.if.in.errors.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"
  unit               = "Count"
}
