resource "dynatrace_metric_metadata" "User_count" {
  display_name       = "User count"
  metric_id          = "metric-sap.Task.usercount"
  source_entity_type = "sap:application_server"
  unit               = "Count"
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
    dimension {
      display_name = "Task Type"
      key          = "tasktype"
    }
    dimension {
      display_name = "Client Number"
      key          = "client_number"
    }
  }
}
