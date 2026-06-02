resource "dynatrace_metric_metadata" "Memory_cache_consumed_min" {
  description        = "Storage space consumed on the host swap cache for storing swapped guest physical memory pages"
  display_name       = "Memory cache consumed (min)"
  metric_id          = "metric-vmware.host.mem.llSwapUsed.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
