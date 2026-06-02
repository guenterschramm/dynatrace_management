resource "dynatrace_metric_metadata" "CPU_Time" {
  description  = "Juniper Running Application CPU Time"
  display_name = "CPU Time"
  metric_id    = "metric-func:com.dynatrace.extension.juniper.generic.app.running.cpu.time"
  unit         = "MilliSecond"
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
