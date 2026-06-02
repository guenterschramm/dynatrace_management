resource "dynatrace_metric_metadata" "Passive_Open_Connections" {
  description  = "The number of times TCP connections have made a direct transition to the SYN-RCVD state from the LISTEN state."
  display_name = "Passive Open Connections"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.tcp.conn.passive_open.count"
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
