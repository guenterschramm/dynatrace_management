resource "dynatrace_metric_metadata" "FRU_Temp" {
  description  = "Temperature of Juniper SNMP FRU"
  display_name = "FRU Temp"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.fru.temp"
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
      display_name = "Contact"
      key          = "system.contact"
    }
    dimension {
      display_name = "System Name"
      key          = "system.name"
    }
    dimension {
      display_name = "Location"
      key          = "system.location"
    }
    dimension {
      display_name = "Contents Index"
      key          = "contents.index"
    }
    dimension {
      display_name = "L1 Index"
      key          = "l.one.index"
    }
    dimension {
      display_name = "L2 Index"
      key          = "l.two.index"
    }
    dimension {
      display_name = "L1 Index"
      key          = "l.three.index"
    }
    dimension {
      display_name = "FRU Name"
      key          = "fru.name"
    }
    dimension {
      display_name = "FRU Type"
      key          = "fru.type"
    }
  }
}
