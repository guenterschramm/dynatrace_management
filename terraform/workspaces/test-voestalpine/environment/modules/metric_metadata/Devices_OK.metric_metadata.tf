resource "dynatrace_metric_metadata" "Devices_OK" {
  description  = "The amount of addresses that responded to the scanner query as part of a given configuration."
  display_name = "Devices OK"
  metric_id    = "metric-sfm.snmp_autodiscovery.devices_ok"
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
