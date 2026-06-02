resource "dynatrace_metric_metadata" "Data_received_Rate" {
  description        = "Average amount of data received per second"
  display_name       = "Data received Rate"
  metric_id          = "metric-vmware.vm.net.bytesRx.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
