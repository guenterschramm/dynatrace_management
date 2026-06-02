resource "dynatrace_metric_metadata" "Memory_Swap_In_Rate" {
  description        = "Rate at which guest physical memory is swapped in from the swap space"
  display_name       = "Memory Swap In Rate"
  metric_id          = "metric-vmware.vm.mem.swapinRate.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
