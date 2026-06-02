resource "dynatrace_metric_metadata" "Ping_Avg_Egress_Time" {
  description  = "The average of the egress trip delays measured over all probes during the most recently completed test"
  display_name = "Ping Avg Egress Time"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.last_ping.avg_egress"
  unit         = "MicroSecond"
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
  }
}
