resource "dynatrace_metric_metadata" "Memory_Decompression_Rate" {
  description        = "Rate of guest physical memory decompression"
  display_name       = "Memory Decompression Rate"
  metric_id          = "metric-vmware.vm.mem.decompressionRate.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
