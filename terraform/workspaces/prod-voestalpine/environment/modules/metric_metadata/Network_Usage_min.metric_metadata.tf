resource "dynatrace_metric_metadata" "Network_Usage_min" {
  description        = "Network utilization (combined transmit-rates and receive-rates) during the interval"
  display_name       = "Network Usage (min)"
  metric_id          = "metric-vmware.host.net.usage.minimum"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
