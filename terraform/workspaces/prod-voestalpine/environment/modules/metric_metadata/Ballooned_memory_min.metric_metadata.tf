resource "dynatrace_metric_metadata" "Ballooned_memory_min" {
  description        = "Amount of guest physical memory reclaimed from the virtual machine by the balloon driver in the guest"
  display_name       = "Ballooned memory (min)"
  metric_id          = "metric-vmware.host.mem.vmmemctl.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
