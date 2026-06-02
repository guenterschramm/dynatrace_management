resource "dynatrace_metric_metadata" "Used_memory" {
  description        = "The amount of memory, in kilobytes, used by the device"
  display_name       = "Used memory"
  metric_id          = "metric-com.dynatrace.extension.network_device.memory_used"
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
