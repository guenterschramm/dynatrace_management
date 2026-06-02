resource "dynatrace_metric_metadata" "Memory_Swap_In_avg" {
  display_name       = "Memory Swap In (avg)"
  metric_id          = "metric-vmware.host.mem.swapIn.average"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
