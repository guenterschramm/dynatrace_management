resource "dynatrace_metric_metadata" "Average_Ping_RTT" {
  description  = "The average of the round trip delays measured for all the probes during the most recently completed tes"
  display_name = "Average Ping RTT"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.last_ping.avg_rtt"
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
