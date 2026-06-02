resource "dynatrace_metric_metadata" "Memory_Swap_In_max" {
  display_name       = "Memory Swap In (max)"
  metric_id          = "metric-vmware.host.mem.swapIn.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
