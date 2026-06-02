resource "dynatrace_metric_metadata" "Memory_Consumed" {
  description        = "Amount of host physical memory consumed for backing up guest physical memory pages"
  display_name       = "Memory Consumed"
  metric_id          = "metric-vmware.vm.mem.consumed.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloByte"
}
