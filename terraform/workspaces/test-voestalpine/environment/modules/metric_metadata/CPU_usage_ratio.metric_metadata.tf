resource "dynatrace_metric_metadata" "CPU_usage_ratio" {
  display_name       = "CPU usage ratio"
  metric_id          = "metric-com.dynatrace.extension.network_device.cpu_ratio"
  source_entity_type = "network:device"
  tags               = [ "NetworkDevice" ]
  unit               = "Ratio"
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
    max_value  = 1
    min_value  = 0
    value_type = "error"
  }
}
