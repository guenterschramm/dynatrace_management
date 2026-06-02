resource "dynatrace_metric_metadata" "Traps_generated" {
  description        = "Total number of SNMP Trap PDUs generated"
  display_name       = "Traps generated"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.snmp.out.traps.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
