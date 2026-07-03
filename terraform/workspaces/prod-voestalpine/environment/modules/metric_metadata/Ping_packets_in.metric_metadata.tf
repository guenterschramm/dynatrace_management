resource "dynatrace_metric_metadata" "Ping_packets_in" {
  description        = "Ping packets in"
  display_name       = "Ping packets in"
  metric_id          = "metric-fortigate.ping.packets.in"
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
    value_type = "score"
  }
}
