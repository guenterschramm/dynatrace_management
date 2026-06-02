resource "dynatrace_metric_metadata" "Host_Consumed_Memory" {
  description        = "Percentage of host physical memory that has been consumed"
  display_name       = "Host Consumed Memory %"
  metric_id          = "metric-vmware.vm.mem.usage.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
