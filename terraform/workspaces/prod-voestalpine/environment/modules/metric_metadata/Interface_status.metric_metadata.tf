resource "dynatrace_metric_metadata" "Interface_status" {
  description        = "A state metric representing a network interface, whose value is always 1 and its dimensions indicate its state details."
  display_name       = "Interface status"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.status"
  source_entity_type = "network:interface"
  tags               = [ "NetworkInterface" ]
  unit               = "State"
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
      display_name = "Operational state"
      key          = "oper.status"
    }
    dimension {
      display_name = "Admin state"
      key          = "admin.status"
    }
    dimension {
      display_name = "Bandwidth"
      key          = "if.speed"
    }
    dimension {
      display_name = "MAC address"
      key          = "mac.address"
    }
    dimension {
      display_name = "Interface name"
      key          = "if.name"
    }
  }
}
