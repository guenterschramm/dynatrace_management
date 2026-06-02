resource "dynatrace_metric_metadata" "Data_Transmit_Rate" {
  description        = "Average amount of data transmitted per second"
  display_name       = "Data Transmit Rate"
  metric_id          = "metric-vmware.vm.net.bytesTx.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
}
