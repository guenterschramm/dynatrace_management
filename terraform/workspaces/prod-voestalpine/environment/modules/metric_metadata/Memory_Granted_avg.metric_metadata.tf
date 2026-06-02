resource "dynatrace_metric_metadata" "Memory_Granted_avg" {
  description        = "Amount of host physical memory or physical memory that is mapped for a virtual machine or a host"
  display_name       = "Memory Granted (avg)"
  metric_id          = "metric-vmware.host.mem.granted.average"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
}
