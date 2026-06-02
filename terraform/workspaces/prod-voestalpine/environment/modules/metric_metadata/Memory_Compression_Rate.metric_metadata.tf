resource "dynatrace_metric_metadata" "Memory_Compression_Rate" {
  description        = "Rate of guest physical memory page compression by ESXi"
  display_name       = "Memory Compression Rate"
  metric_id          = "metric-vmware.vm.mem.compressionRate.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
