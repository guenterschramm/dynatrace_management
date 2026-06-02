resource "dynatrace_metric_metadata" "Traffic_in" {
  description        = "The volume of traffic, in bytes, inboud to the network interface."
  display_name       = "Traffic in"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.bytes_in.count"
  source_entity_type = "network:interface"
  tags               = [ "NetworkInterface" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "Device name"
      key          = "sys.name"
    }
    dimension {
      display_name = "Device address"
      key          = "device.address"
    }
    dimension {
      display_name = "MAC address"
      key          = "mac.address"
    }
    dimension {
      display_name = "Admin status"
      key          = "admin.status"
    }
    dimension {
      display_name = "Operational status"
      key          = "oper.status"
    }
    dimension {
      display_name = "Interface name"
      key          = "if.name"
    }
  }
}
