resource "dynatrace_metric_metadata" "TCP_Incoming_Errors" {
  description  = "The total number of segments received in error (e.g., bad TCP checksums)."
  display_name = "TCP Incoming Errors"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.in.errors.count"
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
