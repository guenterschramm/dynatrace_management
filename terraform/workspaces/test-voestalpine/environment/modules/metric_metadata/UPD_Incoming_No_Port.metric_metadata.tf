resource "dynatrace_metric_metadata" "UPD_Incoming_No_Port" {
  description  = "The total number of received UDP datagrams for which there was no application at the destination port."
  display_name = "UPD Incoming No Port"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.udp.in.no_ports.count"
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
