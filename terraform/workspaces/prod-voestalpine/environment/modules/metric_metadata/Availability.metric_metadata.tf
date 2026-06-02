resource "dynatrace_metric_metadata" "Availability" {
  display_name       = "Availability"
  metric_id          = "metric-sap.avail"
  source_entity_type = "sap:application_server"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "SID"
      key          = "sid"
    }
    dimension {
      display_name = "Instance Number"
      key          = "instance_number"
    }
    dimension {
      display_name = "Host"
      key          = "host"
    }
    dimension {
      display_name = "Extension Version"
      key          = "version"
    }
    dimension {
      display_name = "IP Address"
      key          = "dt.ip_addresses"
    }
    dimension {
      display_name = "Ports"
      key          = "dt.listen_ports"
    }
  }
}
