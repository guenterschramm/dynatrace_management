resource "dynatrace_metric_metadata" "Memory_Swap_In_min" {
  display_name       = "Memory Swap In (min)"
  metric_id          = "metric-vmware.host.mem.swapIn.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
