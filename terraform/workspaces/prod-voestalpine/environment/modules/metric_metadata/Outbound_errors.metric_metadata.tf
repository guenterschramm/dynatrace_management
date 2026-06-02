resource "dynatrace_metric_metadata" "Outbound_errors" {
  description        = "Number of outbound packets/transmission units with errors"
  display_name       = "Outbound errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.if.out.errors.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  unit               = "Count"
}
