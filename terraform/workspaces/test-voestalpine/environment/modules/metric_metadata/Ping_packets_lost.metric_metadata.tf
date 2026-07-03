resource "dynatrace_metric_metadata" "Ping_packets_lost" {
  description        = "Ping packets lost"
  display_name       = "Ping packets lost"
  metric_id          = "metric-fortigate.ping.packets.lost"
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
    value_type = "error"
  }
}
