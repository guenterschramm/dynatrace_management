resource "dynatrace_metric_metadata" "TCP_segment_errors_1" {
  description        = "Total number of segments received in error"
  display_name       = "TCP segment errors"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.in.errs.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
