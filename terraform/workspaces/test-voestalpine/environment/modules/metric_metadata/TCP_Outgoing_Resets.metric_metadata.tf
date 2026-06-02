resource "dynatrace_metric_metadata" "TCP_Outgoing_Resets" {
  description  = "The number of TCP segments sent containing the RST flag."
  display_name = "TCP Outgoing Resets"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.out.resets.count"
  unit         = "Count"
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
  }
}
