resource "dynatrace_metric_metadata" "CPU_busy" {
  description        = "Overall CPU busy percentage in the last 1 min."
  display_name       = "CPU busy"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.total.1min.rev"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Percent"
}
