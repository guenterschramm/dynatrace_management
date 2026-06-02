resource "dynatrace_metric_metadata" "Memory_cache_consumed_max" {
  description        = "Storage space consumed on the host swap cache for storing swapped guest physical memory pages"
  display_name       = "Memory cache consumed (max)"
  metric_id          = "metric-vmware.host.mem.llSwapUsed.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
