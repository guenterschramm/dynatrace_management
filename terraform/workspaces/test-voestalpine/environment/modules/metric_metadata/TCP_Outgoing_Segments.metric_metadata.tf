resource "dynatrace_metric_metadata" "TCP_Outgoing_Segments" {
  description  = "The total number of segments sent, including those on current connections but excluding those containing only retransmitted octets."
  display_name = "TCP Outgoing Segments"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.out.segs.count"
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
