resource "dynatrace_metric_metadata" "CPU_memory_free" {
  description        = "Overall CPU wide sys mem free (legacy 32-bit value)"
  display_name       = "CPU memory free"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.free"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "KiloByte"
}
