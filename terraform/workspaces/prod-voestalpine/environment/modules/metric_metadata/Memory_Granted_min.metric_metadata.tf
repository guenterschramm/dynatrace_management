resource "dynatrace_metric_metadata" "Memory_Granted_min" {
  description        = "Amount of host physical memory or physical memory that is mapped for a virtual machine or a host"
  display_name       = "Memory Granted (min)"
  metric_id          = "metric-vmware.host.mem.granted.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
