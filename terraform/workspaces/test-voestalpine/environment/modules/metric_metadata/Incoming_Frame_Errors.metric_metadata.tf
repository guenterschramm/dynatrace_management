resource "dynatrace_metric_metadata" "Incoming_Frame_Errors" {
  description  = "The number of input packets which were misaligned for an interface."
  display_name = "Incoming Frame Errors"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.if.in.frame_errors.count"
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
