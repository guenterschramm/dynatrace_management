resource "dynatrace_metric_metadata" "Messages_passed" {
  description        = "Total number of messages passed to the transport service"
  display_name       = "Messages passed"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.snmp.out.pkts.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
