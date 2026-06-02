resource "dynatrace_metric_metadata" "Unsupported_SNMP_version_messages" {
  description        = "Total number of messages delivered with an unsupported SNMP version"
  display_name       = "Unsupported SNMP version messages"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.in.bad.versions.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
