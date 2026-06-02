resource "dynatrace_metric_metadata" "Juniper_SNMP_Ping_Probes_Sent" {
  description  = "Number of Ping Probes Sent"
  display_name = "Juniper SNMP Ping Probes Sent"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.last_ping.probes_sent"
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
