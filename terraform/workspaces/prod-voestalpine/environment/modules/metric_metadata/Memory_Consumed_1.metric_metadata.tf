resource "dynatrace_metric_metadata" "Memory_Consumed_1" {
  description        = "Percentage of host physical memory that has been consumed"
  display_name       = "Memory Consumed %"
  metric_id          = "metric-vmware.vm.mem.usage.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
