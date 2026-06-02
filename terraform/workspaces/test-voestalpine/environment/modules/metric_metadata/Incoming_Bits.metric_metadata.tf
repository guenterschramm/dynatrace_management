resource "dynatrace_metric_metadata" "Incoming_Bits" {
  description  = "The number of incoming bits per second for an interface."
  display_name = "Incoming Bits"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.if.in.bits"
  unit         = "BitPerSecond"
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
