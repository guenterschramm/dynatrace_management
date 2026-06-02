resource "dynatrace_metric_metadata" "VM_Memory_Size" {
  display_name       = "VM Memory Size"
  metric_id          = "metric-vmware.vm.mem.size"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaByte"
}
