resource "dynatrace_metric_metadata" "qTp_FDB" {
  description  = "Used to Show FDB"
  display_name = "qTp FDB"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.qtpfdb"
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
      display_name = "Address"
      key          = "address"
    }
    dimension {
      display_name = "Port"
      key          = "port"
    }
    dimension {
      display_name = "Status"
      key          = "status"
    }
  }
}
