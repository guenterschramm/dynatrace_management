resource "dynatrace_metric_metadata" "Active_Memory_Used" {
  description        = "Amount of guest physical memory that is being actively read or written by guest. Activeness is estimated by ESXi"
  display_name       = "Active Memory Used"
  metric_id          = "metric-vmware.vm.mem.active.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloByte"
}
