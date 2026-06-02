resource "dynatrace_metric_metadata" "Memory_Granted_max" {
  description        = "Amount of host physical memory or physical memory that is mapped for a virtual machine or a host"
  display_name       = "Memory Granted (max)"
  metric_id          = "metric-vmware.host.mem.granted.maximum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
