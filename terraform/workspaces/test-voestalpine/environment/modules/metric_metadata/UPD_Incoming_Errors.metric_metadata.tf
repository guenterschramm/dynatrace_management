resource "dynatrace_metric_metadata" "UPD_Incoming_Errors" {
  description  = "The number of received UDP datagrams that could not be delivered for reasons other than the lack of an application at the destination port."
  display_name = "UPD Incoming Errors"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.udp.in.errors.count"
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
