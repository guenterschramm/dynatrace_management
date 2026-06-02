resource "dynatrace_metric_metadata" "Network_Utilization" {
  description        = "Network utilization (combined transmit-rates and receive-rates)"
  display_name       = "Network Utilization"
  metric_id          = "metric-vmware.vm.net.usage.maximum"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
