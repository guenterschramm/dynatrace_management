resource "dynatrace_metric_metadata" "Host_Memory_Consumed" {
  description        = "Percentage of host physical memory that has been consumed"
  display_name       = "Host Memory Consumed %"
  metric_id          = "metric-vmware.host.mem.usage.average"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
