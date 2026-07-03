resource "dynatrace_metric_metadata" "Received_Packets_Dropped" {
  description        = "Number of receives dropped"
  display_name       = "Received Packets Dropped"
  metric_id          = "metric-vmware.vm.net.droppedRx.summation.count"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Count"
}
