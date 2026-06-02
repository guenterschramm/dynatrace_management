resource "dynatrace_metric_metadata" "Datagrams_Sent" {
  description  = "The total number of UDP datagrams sent"
  display_name = "Datagrams Sent"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.udp.out.datagrams.count"
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
