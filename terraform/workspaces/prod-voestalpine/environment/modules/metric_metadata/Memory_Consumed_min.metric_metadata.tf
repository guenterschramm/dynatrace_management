resource "dynatrace_metric_metadata" "Memory_Consumed_min" {
  description        = "Percentage of host physical memory that has been consumed"
  display_name       = "Memory Consumed (min) %"
  metric_id          = "metric-vmware.host.mem.usage.minimum"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
