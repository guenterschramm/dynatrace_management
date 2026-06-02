resource "dynatrace_metric_metadata" "Received_Packets_Dropped_1" {
  description        = "Number of receives dropped"
  display_name       = "Received Packets Dropped"
  metric_id          = "metric-vmware.host.net.droppedRx.summation"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
