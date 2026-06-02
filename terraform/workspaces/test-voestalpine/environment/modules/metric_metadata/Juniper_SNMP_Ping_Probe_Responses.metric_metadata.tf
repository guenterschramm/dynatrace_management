resource "dynatrace_metric_metadata" "Juniper_SNMP_Ping_Probe_Responses" {
  description  = "Number of Ping Probes that Responded"
  display_name = "Juniper SNMP Ping Probe Responses"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.last_ping.probe_responses"
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
  }
}
