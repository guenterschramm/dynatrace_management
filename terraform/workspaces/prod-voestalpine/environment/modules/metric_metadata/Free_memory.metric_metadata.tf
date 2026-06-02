resource "dynatrace_metric_metadata" "Free_memory" {
  description        = "The amount of memory, in kilobytes, currently free on the device"
  display_name       = "Free memory"
  metric_id          = "metric-com.dynatrace.extension.network_device.memory_free"
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
