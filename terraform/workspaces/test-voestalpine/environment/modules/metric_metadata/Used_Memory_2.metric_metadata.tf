resource "dynatrace_metric_metadata" "Used_Memory_2" {
  description  = "Juniper SNMP Running Application Memory Use"
  display_name = "Used Memory"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.app.running.memory"
  unit         = "KiloByte"
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
      display_name = "Application Name"
      key          = "app.name"
    }
    dimension {
      display_name = "Application User"
      key          = "app.user"
    }
  }
}
