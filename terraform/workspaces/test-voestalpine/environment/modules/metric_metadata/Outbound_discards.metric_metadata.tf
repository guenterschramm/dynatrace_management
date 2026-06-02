resource "dynatrace_metric_metadata" "Outbound_discards" {
  description        = "Number of outbound packets discarded"
  display_name       = "Outbound discards"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.if.out.discards.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device_interface"
  unit               = "Count"
}
