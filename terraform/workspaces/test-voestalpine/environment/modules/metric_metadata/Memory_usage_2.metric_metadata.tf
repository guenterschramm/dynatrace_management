resource "dynatrace_metric_metadata" "Memory_usage_2" {
  description        = "The current memory used by the device, expressed as a percentage of total memory"
  display_name       = "Memory usage"
  metric_id          = "metric-com.dynatrace.extension.network_device.memory_usage"
  source_entity_type = "network:device"
  tags               = [ "NetworkDevice" ]
  unit               = "Percent"
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
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "error"
  }
}
