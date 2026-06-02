resource "dynatrace_metric_metadata" "Total_Packets" {
  description  = "The total number of packets per second on the interface."
  display_name = "Total Packets"
  metric_id    = "metric-func:com.dynatrace.extension.juniper.generic.if.total.packets"
  unit         = "PerSecond"
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
