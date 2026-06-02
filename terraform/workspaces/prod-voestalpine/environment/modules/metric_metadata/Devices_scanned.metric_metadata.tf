resource "dynatrace_metric_metadata" "Devices_scanned" {
  description  = "The total amount of addresses that were scanned by the extension as part of a given configuration."
  display_name = "Devices scanned"
  metric_id    = "metric-sfm.snmp_autodiscovery.devices_scanned"
  unit         = "Count"
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
    dimension {
      display_name = "Group label"
      key          = "group.label"
    }
    dimension {
      display_name = "Address range"
      key          = "address.range"
    }
  }
}
