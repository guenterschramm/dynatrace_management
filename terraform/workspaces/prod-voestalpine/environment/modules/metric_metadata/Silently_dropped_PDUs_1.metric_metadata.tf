resource "dynatrace_metric_metadata" "Silently_dropped_PDUs_1" {
  description        = "Number of silently dropped PDUs due to the large reply size"
  display_name       = "Silently dropped PDUs"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.snmp.silentdrops.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
