resource "dynatrace_metric_metadata" "Current_Established_Connections" {
  description  = "The number of TCP connections for which the current state is either ESTABLISHED or CLOSE- WAIT."
  display_name = "Current Established Connections"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.conn.curr_estab"
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
