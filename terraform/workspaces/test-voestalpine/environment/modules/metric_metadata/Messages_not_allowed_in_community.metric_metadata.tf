resource "dynatrace_metric_metadata" "Messages_not_allowed_in_community" {
  description        = "Number of messages not allowed for the used SNMP community"
  display_name       = "Messages not allowed in community"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.in.bad.community.uses.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
