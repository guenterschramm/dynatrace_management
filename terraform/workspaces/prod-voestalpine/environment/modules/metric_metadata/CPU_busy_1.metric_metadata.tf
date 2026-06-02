resource "dynatrace_metric_metadata" "CPU_busy_1" {
  description        = "Overall CPU busy percentage in the last 5 min."
  display_name       = "CPU busy"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.total.5min.rev"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Percent"
}
