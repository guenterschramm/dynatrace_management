resource "dynatrace_metric_metadata" "Installed_Application_Entity" {
  description  = "Used to create Juniper Installed Applications"
  display_name = "Installed Application Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.app.installed.entity"
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
      display_name = "Application Name"
      key          = "app.name"
    }
    dimension {
      display_name = "Application Type"
      key          = "app.type"
    }
  }
}
