resource "dynatrace_metric_metadata" "SAP_ABAP_Custom_RUM_Application" {
  display_name       = "SAP ABAP Custom RUM Application"
  metric_id          = "metric-sap.customApplication"
  source_entity_type = "sap:application_server"
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "Custom App ID"
      key          = "custom_app"
    }
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
