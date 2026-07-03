resource "dynatrace_metric_metadata" "Tunnel_proxy_bytes_in" {
  description        = "Tunnel proxy bytes in"
  display_name       = "Tunnel proxy bytes in"
  metric_id          = "metric-fortigate.tunnel.proxy.bytes.in.count"
  source_entity_type = "fortinet:fortigate_tunnel_proxy"
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
      display_name = "Proxy"
      key          = "proxy"
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
