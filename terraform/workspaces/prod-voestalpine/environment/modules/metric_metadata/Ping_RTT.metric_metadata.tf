resource "dynatrace_metric_metadata" "Ping_RTT" {
  description        = "Ping RTT"
  display_name       = "Ping RTT"
  metric_id          = "metric-fortigate.ping.rtt"
  source_entity_type = "fortinet:fortigate"
  unit               = "MilliSecond"
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
    value_type = "error"
  }
}
