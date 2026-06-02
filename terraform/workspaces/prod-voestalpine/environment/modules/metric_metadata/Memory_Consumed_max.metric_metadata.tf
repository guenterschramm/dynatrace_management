resource "dynatrace_metric_metadata" "Memory_Consumed_max" {
  description        = "Percentage of host physical memory that has been consumed"
  display_name       = "Memory Consumed (max) %"
  metric_id          = "metric-vmware.host.mem.usage.maximum"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
