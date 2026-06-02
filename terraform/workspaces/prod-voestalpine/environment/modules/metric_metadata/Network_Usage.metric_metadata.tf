resource "dynatrace_metric_metadata" "Network_Usage" {
  description        = "Network utilization (combined transmit-rates and receive-rates) during the interval"
  display_name       = "Network Usage"
  metric_id          = "metric-vmware.host.net.usage.average"
  source_entity_type = "vmware:host"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
