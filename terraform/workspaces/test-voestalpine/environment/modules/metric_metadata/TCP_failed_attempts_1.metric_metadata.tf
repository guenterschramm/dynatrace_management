resource "dynatrace_metric_metadata" "TCP_failed_attempts_1" {
  description        = "Number of transitions of TCP connections from SYN-SENT/SYN-RCVD to CLOSED and from SYN-RCVD to LISTEN"
  display_name       = "TCP failed attempts"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.tcp.attemptfails.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
