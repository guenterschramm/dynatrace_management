resource "dynatrace_metric_metadata" "Outgoing_Octets" {
  description  = "The total number of octets transmitted out of the interface."
  display_name = "Outgoing Octets"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.if.out.octets.count"
  unit         = "Byte"
  dimensions {
    dimension {
      display_name = "IP Address"
      key          = "device.address"
    }
    dimension {
      display_name = "Port"
      key          = "device.port"
    }
    dimension {
      display_name = "Contact"
      key          = "system.contact"
    }
    dimension {
      display_name = "Device Name"
      key          = "system.name"
    }
    dimension {
      display_name = "Location"
      key          = "system.location"
    }
    dimension {
      display_name = "Interface Description"
      key          = "if.descr"
    }
    dimension {
      display_name = "Interface Index"
      key          = "if.idx"
    }
  }
}
