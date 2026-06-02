resource "dynatrace_metric_metadata" "TCP_Retransmitted_Segments" {
  description  = "The total number of segments retransmitted - that is, the number of TCP segments transmitted containing one or more previously transmitted octets."
  display_name = "TCP Retransmitted Segments"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.retrans.segs.count"
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
