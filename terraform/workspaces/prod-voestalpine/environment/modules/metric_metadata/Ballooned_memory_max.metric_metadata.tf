resource "dynatrace_metric_metadata" "Ballooned_memory_max" {
  description        = "Amount of guest physical memory reclaimed from the virtual machine by the balloon driver in the guest"
  display_name       = "Ballooned memory (max)"
  metric_id          = "metric-vmware.host.mem.vmmemctl.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
