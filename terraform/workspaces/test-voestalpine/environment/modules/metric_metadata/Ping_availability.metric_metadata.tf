resource "dynatrace_metric_metadata" "Ping_availability" {
  description        = "Ping availability"
  display_name       = "Ping availability"
  metric_id          = "metric-fortigate.ping.availability"
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
    value_type = "score"
  }
}
