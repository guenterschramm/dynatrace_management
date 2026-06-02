resource "dynatrace_metric_metadata" "Memory_pool_free_32_bit" {
  description        = "The number of bytes from the memory pool that are currently unused."
  display_name       = "Memory pool free (32 bit)"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.memory_pool.free"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Byte"
}
