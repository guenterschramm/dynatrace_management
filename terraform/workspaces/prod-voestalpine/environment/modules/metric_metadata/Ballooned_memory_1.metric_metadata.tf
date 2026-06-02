resource "dynatrace_metric_metadata" "Ballooned_memory_1" {
  description        = "Amount of guest physical memory reclaimed from the virtual machine by the balloon driver in the guest"
  display_name       = "Ballooned memory"
  metric_id          = "metric-vmware.vm.mem.vmmemctl.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloByte"
}
