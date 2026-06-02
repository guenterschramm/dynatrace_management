resource "dynatrace_metric_metadata" "Total_Datagrams" {
  description  = "The total number of UDP datagrams"
  display_name = "Total Datagrams"
  metric_id    = "metric-func:com.dynatrace.extension.juniper.generic.device.udp.total.datagrams.count"
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
