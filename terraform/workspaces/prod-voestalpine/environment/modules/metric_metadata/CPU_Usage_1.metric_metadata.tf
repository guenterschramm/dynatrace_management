resource "dynatrace_metric_metadata" "CPU_usage_1" {
  description        = "CPU usage"
  display_name       = "CPU usage"
  metric_id          = "metric-fortigate.cpu.usage"
  source_entity_type = "fortinet:fortigate"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "URL"
      key          = "url"
    }
    dimension {
      display_name = "Alias"
      key          = "alias"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "error"
  }
}
