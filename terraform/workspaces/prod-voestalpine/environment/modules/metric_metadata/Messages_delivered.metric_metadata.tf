resource "dynatrace_metric_metadata" "Messages_delivered" {
  description        = "Total number of messages delivered from the transport service"
  display_name       = "Messages delivered"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
