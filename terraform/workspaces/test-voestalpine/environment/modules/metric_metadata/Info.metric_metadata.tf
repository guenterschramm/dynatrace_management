resource "dynatrace_metric_metadata" "Info" {
  description  = "Used to get Juniper SNMP IS-IS Info"
  display_name = "Info"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.layer3.info"
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
      display_name = "IS-IS Index"
      key          = "isis.idx"
    }
    dimension {
      display_name = "IS-IS IP Address"
      key          = "isis.ip.addr"
    }
  }
}
