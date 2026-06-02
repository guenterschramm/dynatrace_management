resource "dynatrace_metric_metadata" "Data_Receive_Rate" {
  description        = "Average amount of data received per second"
  display_name       = "Data Receive Rate"
  metric_id          = "metric-vmware.host.net.bytesRx.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
}
