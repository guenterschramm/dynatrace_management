resource "dynatrace_metric_metadata" "Transmitted_Packets_Dropped" {
  description        = "Number of transmits dropped"
  display_name       = "Transmitted Packets Dropped"
  metric_id          = "metric-vmware.vm.net.droppedTx.summation"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
