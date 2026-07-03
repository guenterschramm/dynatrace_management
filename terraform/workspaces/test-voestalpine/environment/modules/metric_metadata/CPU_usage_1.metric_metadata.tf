resource "dynatrace_metric_metadata" "CPU_usage_1" {
  description        = "The system's CPU usage expressed as a percentage"
  display_name       = "CPU usage"
  metric_id          = "metric-com.dynatrace.extension.network_device.cpu_usage"
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
