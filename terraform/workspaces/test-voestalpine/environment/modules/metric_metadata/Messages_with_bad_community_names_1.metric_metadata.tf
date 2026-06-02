resource "dynatrace_metric_metadata" "Messages_with_bad_community_names_1" {
  description        = "Number of messages with an unknown SNMP community"
  display_name       = "Messages with bad community names"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.snmp.in.bad.community.names.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
