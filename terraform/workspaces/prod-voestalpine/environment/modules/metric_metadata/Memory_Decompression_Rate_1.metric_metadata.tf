resource "dynatrace_metric_metadata" "Memory_Decompression_Rate_1" {
  description        = "Rate of guest physical memory decompression"
  display_name       = "Memory Decompression Rate"
  metric_id          = "metric-vmware.host.mem.decompressionRate.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
