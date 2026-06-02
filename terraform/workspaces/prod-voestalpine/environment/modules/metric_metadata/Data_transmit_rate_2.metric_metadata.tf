resource "dynatrace_metric_metadata" "Data_transmit_rate_2" {
  description        = "Rate at which data was transmitted during the interval"
  display_name       = "Data transmit rate"
  metric_id          = "metric-vmware.vm.net.transmitted.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
