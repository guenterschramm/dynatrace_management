resource "dynatrace_metric_metadata" "Messages_with_bad_community_names" {
  description        = "Number of messages with an unknown SNMP community"
  display_name       = "Messages with bad community names"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.in.bad.community.names.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
