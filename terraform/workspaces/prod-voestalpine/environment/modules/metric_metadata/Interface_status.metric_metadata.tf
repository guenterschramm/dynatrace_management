resource "dynatrace_metric_metadata" "Interface_status" {
  description        = "Interface status"
  display_name       = "Interface status"
  metric_id          = "metric-fortigate.interface.status"
  source_entity_type = "fortinet:fortigate_interface"
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
    value_type = "unknown"
  }
}
