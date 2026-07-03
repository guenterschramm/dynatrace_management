resource "dynatrace_metric_metadata" "Memory_usage" {
  description        = "Memory usage"
  display_name       = "Memory usage"
  metric_id          = "metric-fortigate.memory.usage"
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
