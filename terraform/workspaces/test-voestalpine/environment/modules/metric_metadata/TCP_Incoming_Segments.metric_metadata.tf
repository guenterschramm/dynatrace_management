resource "dynatrace_metric_metadata" "TCP_Incoming_Segments" {
  description  = "The total number of segments received, including those received in error. This count includes segments received on currently established connections."
  display_name = "TCP Incoming Segments"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.in.segs.count"
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
