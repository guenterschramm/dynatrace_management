resource "dynatrace_metric_metadata" "Routing_Engine_Memory_Utilization" {
  description  = "Memory Utilization of the Routing Engine"
  display_name = "Routing Engine Memory Utilization"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.routingengine.memory.utilization"
  unit         = "Percent"
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
