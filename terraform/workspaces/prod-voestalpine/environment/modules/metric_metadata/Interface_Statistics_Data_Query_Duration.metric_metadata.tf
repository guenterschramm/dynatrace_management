resource "dynatrace_metric_metadata" "Interface_Statistics_Data_Query_Duration" {
  description  = "Duration of the paged query devices.gets_interfaces_along_with_statistics_data_from_all_network_devices, used to collect interface metrics."
  display_name = "Interface Statistics Data Query Duration"
  metric_id    = "metric-sfm.cisco.cc.devices.gets_interfaces_along_with_statistics_data_from_all_network_devices.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Interface View Parameter"
      key          = "view"
    }
    dimension {
      display_name = "Query Pagination Offset"
      key          = "offset"
    }
    dimension {
      display_name = "Query Page Size"
      key          = "page_size"
    }
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
