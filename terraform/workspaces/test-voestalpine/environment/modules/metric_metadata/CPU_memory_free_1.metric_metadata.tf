resource "dynatrace_metric_metadata" "CPU_memory_free_1" {
  description        = "Overall CPU wide sys mem free"
  display_name       = "CPU memory free"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.hc.free"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "KiloByte"
}
