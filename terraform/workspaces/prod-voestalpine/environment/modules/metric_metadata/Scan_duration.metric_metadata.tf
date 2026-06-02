resource "dynatrace_metric_metadata" "Scan_duration" {
  description  = "The time the extension took to scan through all addresses that are part of a given configuration."
  display_name = "Scan duration"
  metric_id    = "metric-sfm.snmp_autodiscovery.scan_duration"
  unit         = "NanoSecond"
  dimensions {
    dimension {
      display_name = "Configuration ID"
      key          = "config.id"
    }
    dimension {
      display_name = "Configuration description"
      key          = "config.description"
    }
    dimension {
      display_name = "Configuration timestamp"
      key          = "config.timestamp"
    }
    dimension {
      display_name = "ActiveGate"
      key          = "activegate"
    }
  }
}
