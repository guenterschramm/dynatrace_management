resource "dynatrace_metric_metadata" "Data_receive_rate" {
  description        = "Rate at which data was received during the interval"
  display_name       = "Data receive rate"
  metric_id          = "metric-vmware.vm.net.received.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "KiloBytePerSecond"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
