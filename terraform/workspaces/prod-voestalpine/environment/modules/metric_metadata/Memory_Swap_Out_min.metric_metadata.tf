resource "dynatrace_metric_metadata" "Memory_Swap_Out_min" {
  display_name       = "Memory Swap Out (min)"
  metric_id          = "metric-vmware.host.mem.swapOut.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
