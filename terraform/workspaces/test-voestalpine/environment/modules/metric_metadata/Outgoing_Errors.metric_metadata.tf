resource "dynatrace_metric_metadata" "Outgoing_Errors" {
  description  = "The number of outbound packets that contained errors for an interface."
  display_name = "Outgoing Errors"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.if.out.err.count"
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
    dimension {
      display_name = "Interface Description"
      key          = "if.descr"
    }
    dimension {
      display_name = "Interface Index"
      key          = "if.idx"
    }
  }
}
