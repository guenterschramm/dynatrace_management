resource "dynatrace_metric_metadata" "Unsupported_SNMP_version_messages_1" {
  description        = "Total number of messages delivered with an unsupported SNMP version"
  display_name       = "Unsupported SNMP version messages"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.snmp.in.bad.versions.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
