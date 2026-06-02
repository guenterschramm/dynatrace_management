resource "dynatrace_metric_metadata" "Transmitted_Packets_Dropped_1" {
  description        = "Number of transmits dropped"
  display_name       = "Transmitted Packets Dropped"
  metric_id          = "metric-vmware.host.net.droppedTx.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
