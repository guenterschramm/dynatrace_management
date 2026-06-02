resource "dynatrace_metric_metadata" "CPU_load_1" {
  description        = "Overall CPU load average in the last 1 min."
  display_name       = "CPU load"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.loadavg.1min"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Count"
}
