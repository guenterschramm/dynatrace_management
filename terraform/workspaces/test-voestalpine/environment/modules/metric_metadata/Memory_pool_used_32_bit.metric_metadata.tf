resource "dynatrace_metric_metadata" "Memory_pool_used_32_bit" {
  description        = "The number of bytes from the memory pool that are currently in use."
  display_name       = "Memory pool used (32 bit)"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.memory_pool.used"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Byte"
}
