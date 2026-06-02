resource "dynatrace_metric_metadata" "Disk_Size_1" {
  description  = "Size of Disk"
  display_name = "Disk Size"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.storage.size"
  unit         = "Byte"
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
      display_name = "Disk Index"
      key          = "storage.index"
    }
    dimension {
      display_name = "Disk Description"
      key          = "storage.descr"
    }
  }
}
