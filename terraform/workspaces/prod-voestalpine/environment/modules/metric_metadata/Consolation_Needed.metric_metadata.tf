resource "dynatrace_metric_metadata" "Consolation_Needed" {
  description        = "Indicates whether a disk associated with the virtual machine requires consolidation. Status codes: 0=false 1=true"
  display_name       = "Consolation Needed"
  metric_id          = "metric-vmware.vm.consolidation.needed"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
