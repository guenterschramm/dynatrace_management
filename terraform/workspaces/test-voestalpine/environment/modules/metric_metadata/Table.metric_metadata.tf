resource "dynatrace_metric_metadata" "Table" {
  description  = "Used to show ARP Table"
  display_name = "Table"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.arp.table"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Device.address"
      key          = "device.address"
    }
    dimension {
      display_name = "Device.port"
      key          = "device.port"
    }
    dimension {
      display_name = "System.contact"
      key          = "system.contact"
    }
    dimension {
      display_name = "System.name"
      key          = "system.name"
    }
    dimension {
      display_name = "System.location"
      key          = "system.location"
    }
    dimension {
      display_name = "Interface Index"
      key          = "if.idx"
    }
    dimension {
      display_name = "MAC Address"
      key          = "phys.address"
    }
    dimension {
      display_name = "IP Address"
      key          = "net.address"
    }
    dimension {
      display_name = "Type"
      key          = "type"
    }
  }
}
