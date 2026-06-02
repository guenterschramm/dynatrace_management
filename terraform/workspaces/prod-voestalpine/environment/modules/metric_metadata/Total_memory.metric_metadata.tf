resource "dynatrace_metric_metadata" "Total_memory" {
  description        = "The total (used and free) amount of memory, in kilobytes, available on the device"
  display_name       = "Total memory"
  metric_id          = "metric-com.dynatrace.extension.network_device.memory_total"
  source_entity_type = "network:device"
  tags               = [ "NetworkDevice" ]
  unit               = "KiloByte"
  dimensions {
    dimension {
      display_name = "Device name"
      key          = "sys.name"
    }
    dimension {
      display_name = "Device address"
      key          = "device.address"
    }
  }
}
