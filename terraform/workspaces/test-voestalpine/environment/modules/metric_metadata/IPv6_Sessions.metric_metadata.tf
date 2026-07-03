resource "dynatrace_metric_metadata" "IPv6_Sessions" {
  description        = "IPv6 Sessions"
  display_name       = "IPv6 Sessions"
  metric_id          = "metric-fortigate.sessions.ipv6"
  source_entity_type = "fortinet:fortigate"
  unit               = "Count"
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
    min_value  = 0
    value_type = "unknown"
  }
}
