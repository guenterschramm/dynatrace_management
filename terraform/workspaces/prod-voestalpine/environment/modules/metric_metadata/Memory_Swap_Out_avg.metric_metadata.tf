resource "dynatrace_metric_metadata" "Memory_Swap_Out_avg" {
  display_name       = "Memory Swap Out (avg)"
  metric_id          = "metric-vmware.host.mem.swapOut.average"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
