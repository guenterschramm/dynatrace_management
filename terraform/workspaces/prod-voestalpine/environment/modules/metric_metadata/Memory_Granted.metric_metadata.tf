resource "dynatrace_metric_metadata" "Memory_Granted" {
  description        = "Amount of host physical memory or physical memory that is mapped for a virtual machine or a host"
  display_name       = "Memory Granted"
  metric_id          = "metric-vmware.vm.mem.granted.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloByte"
}
