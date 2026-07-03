resource "dynatrace_metric_metadata" "Tunnel_bytes_in" {
  description        = "Tunnel bytes in"
  display_name       = "Tunnel bytes in"
  metric_id          = "metric-fortigate.tunnel.bytes.in.count"
  source_entity_type = "fortinet:fortigate_tunnel"
  unit               = "Byte"
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
      display_name = "Tunnel"
      key          = "tunnel"
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
