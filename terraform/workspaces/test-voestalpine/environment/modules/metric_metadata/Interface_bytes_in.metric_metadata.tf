resource "dynatrace_metric_metadata" "Interface_bytes_in" {
  description        = "Interface bytes in"
  display_name       = "Interface bytes in"
  metric_id          = "metric-fortigate.interface.bytes.in.count"
  source_entity_type = "fortinet:fortigate_interface"
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
      display_name = "Interface"
      key          = "if.name"
    }
    dimension {
      display_name = "MAC Address"
      key          = "mac.address"
    }
    dimension {
      display_name = "Interface ID"
      key          = "if.id"
    }
    dimension {
      display_name = "Status"
      key          = "oper.status"
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
