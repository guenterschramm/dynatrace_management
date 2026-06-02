resource "dynatrace_metric_metadata" "Memory_Swap_Out_Rate_1" {
  description        = "Rate at which guest physical memory is swapped out to the swap space"
  display_name       = "Memory Swap Out Rate"
  metric_id          = "metric-vmware.host.mem.swapoutRate.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
