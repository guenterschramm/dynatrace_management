resource "dynatrace_metric_metadata" "Memory_pool_free_64_bit" {
  description        = "The number of bytes from the enhanced memory pool that are currently unused."
  display_name       = "Memory pool free (64 bit)"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.enhanced.memory_pool.free"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Byte"
}
