resource "dynatrace_metric_metadata" "Data_receive_rate_2" {
  description        = "Rate at which data was received during the interval"
  display_name       = "Data receive rate"
  metric_id          = "metric-vmware.host.net.received.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
