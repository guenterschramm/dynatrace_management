resource "dynatrace_metric_metadata" "CPU_memory_used_1" {
  description        = "Overall CPU wide sys mem currently under use"
  display_name       = "CPU memory used"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.hc.used"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "KiloByte"
}
