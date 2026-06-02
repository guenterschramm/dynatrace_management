resource "dynatrace_metric_metadata" "CPU_memory_used" {
  description        = "Overall CPU wide sys mem currently under use (legacy 32-bit value)"
  display_name       = "CPU memory used"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.used"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "KiloByte"
}
