resource "dynatrace_metric_metadata" "Device_Discovery_Count_Query_Duration" {
  description  = "Duration of the get_network_devices_count_by_params API call used to determine device count during BASIC discovery."
  display_name = "Device Discovery Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_network_devices_count_by_params.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Configuration Name"
      key          = "config_name"
    }
    dimension {
      display_name = "Endpoint URL"
      key          = "endpoint_url"
    }
  }
}
