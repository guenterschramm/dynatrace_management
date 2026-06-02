resource "dynatrace_metric_metadata" "Routing_Engine_State" {
  description  = "unknown(1),running(2),ready(3),reset(4),runningAtFullSpeed(5),down(6),standby(7)"
  display_name = "Routing Engine State"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.routingengine.state"
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
      display_name = "Routing Engine Description"
      key          = "routingengine.descr"
    }
  }
}
