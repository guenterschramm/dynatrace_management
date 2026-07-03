resource "dynatrace_metric_metadata" "Available_interface_admin_status" {
  description        = "Available interface admin status"
  display_name       = "Available interface admin status"
  metric_id          = "metric-fortigate.available_interface.status"
  source_entity_type = "fortinet:fortigate_available_interface"
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
      display_name = "Status"
      key          = "oper.status"
    }
    dimension {
      display_name = "Type"
      key          = "if.type"
    }
    dimension {
      display_name = "MAC Address"
      key          = "mac.address"
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
