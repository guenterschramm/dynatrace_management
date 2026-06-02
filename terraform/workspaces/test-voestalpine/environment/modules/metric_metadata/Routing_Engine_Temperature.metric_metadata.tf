resource "dynatrace_metric_metadata" "Routing_Engine_Temperature" {
  description  = "The temperature of the Routing Engine in Celsius."
  display_name = "Routing Engine Temperature"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.routingengine.temperature"
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
