resource "dynatrace_metric_metadata" "Data_transmit_rate_3" {
  description        = "Rate at which data was transmitted during the interval"
  display_name       = "Data transmit rate"
  metric_id          = "metric-vmware.host.net.transmitted.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
