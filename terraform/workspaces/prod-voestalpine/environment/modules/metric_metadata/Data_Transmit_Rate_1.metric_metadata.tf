resource "dynatrace_metric_metadata" "Data_Transmit_Rate_1" {
  description        = "Average amount of data transmitted per second"
  display_name       = "Data Transmit Rate"
  metric_id          = "metric-vmware.host.net.bytesTx.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
