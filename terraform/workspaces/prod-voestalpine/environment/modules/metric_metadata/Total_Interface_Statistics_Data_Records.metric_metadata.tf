resource "dynatrace_metric_metadata" "Total_Interface_Statistics_Data_Records" {
  description  = "Number of interface statistics data records in the responses of all paged queries devices.gets_interfaces_along_with_statistics_data_from_all_network_devices, used to collect interface metrics."
  display_name = "Total Interface Statistics Data Records"
  metric_id    = "metric-sfm.cisco.cc.endpoint.fetch_ifaces_statistics.fetched_statistics"
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
