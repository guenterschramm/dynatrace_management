resource "dynatrace_metric_metadata" "Juniper_IP_Address" {
  description  = "Used to create Juniper IP Address Entity"
  display_name = "Juniper IP Address"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.ip_addr.entity"
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
      display_name = "IP Address"
      key          = "ip.addr"
    }
    dimension {
      display_name = "Interface Index"
      key          = "if.idx"
    }
  }
}
