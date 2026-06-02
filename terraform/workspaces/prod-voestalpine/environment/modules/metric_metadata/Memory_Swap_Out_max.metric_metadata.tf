resource "dynatrace_metric_metadata" "Memory_Swap_Out_max" {
  display_name       = "Memory Swap Out (max)"
  metric_id          = "metric-vmware.host.mem.swapOut.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
