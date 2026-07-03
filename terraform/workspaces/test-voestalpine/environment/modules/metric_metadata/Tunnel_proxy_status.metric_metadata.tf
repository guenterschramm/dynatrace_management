resource "dynatrace_metric_metadata" "Tunnel_proxy_status" {
  description        = "Tunnel proxy status"
  display_name       = "Tunnel proxy status"
  metric_id          = "metric-fortigate.tunnel.proxy.status"
  source_entity_type = "fortinet:fortigate_tunnel_proxy"
  unit               = "State"
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
      display_name = "Status"
      key          = "status"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
  }
  metric_properties {
    value_type = "unknown"
  }
}
