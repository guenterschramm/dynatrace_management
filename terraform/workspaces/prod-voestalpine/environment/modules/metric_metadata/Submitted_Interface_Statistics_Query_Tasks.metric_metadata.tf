resource "dynatrace_metric_metadata" "Submitted_Interface_Statistics_Query_Tasks" {
  description  = "Number of submitted tasks to run the paged query devices.gets_interfaces_along_with_statistics_data_from_all_network_devices, used to collect interface metrics."
  display_name = "Submitted Interface Statistics Query Tasks"
  metric_id    = "metric-sfm.cisco.cc.endpoint.get_ifaces_data_by_view_async.submitted"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Configuration Name (Center)"
      key          = "config_name"
    }
    dimension {
      display_name = "Center Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Data Collection Frequency"
      key          = "frequency"
    }
    dimension {
      display_name = "Endpoint IP"
      key          = "endpoint_ip"
    }
    dimension {
      display_name = "Center (Configuration Name)"
      key          = "center"
    }
  }
}
