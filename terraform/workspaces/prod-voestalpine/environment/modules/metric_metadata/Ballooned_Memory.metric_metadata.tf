resource "dynatrace_metric_metadata" "Ballooned_Memory" {
  description        = "The size of the balloon driver in the VM, in MB. The host will inflate the balloon driver to reclaim physical memory from the VM. This is a sign that there is memory pressure on the host."
  display_name       = "Ballooned Memory"
  metric_id          = "metric-vmware.vm.mem.ballooned"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaByte"
}
