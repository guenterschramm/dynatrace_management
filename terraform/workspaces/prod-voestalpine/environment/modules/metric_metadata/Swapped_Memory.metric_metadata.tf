resource "dynatrace_metric_metadata" "Swapped_Memory" {
  description        = "The portion of memory, in MB, that is granted to this VM from the host's swap space. This is a sign that there is memory pressure on the host."
  display_name       = "Swapped Memory"
  metric_id          = "metric-vmware.vm.mem.swapped"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaByte"
}
