resource "dynatrace_metric_metadata" "Traps_processed" {
  description        = "Total number of SNMP Trap PDUs accepted and processed"
  display_name       = "Traps processed"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.snmp.in.traps.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
