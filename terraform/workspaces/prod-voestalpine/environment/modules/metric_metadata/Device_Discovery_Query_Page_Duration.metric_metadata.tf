resource "dynatrace_metric_metadata" "Device_Discovery_Query_Page_Duration" {
  description  = "Duration of a single paginated get_network_devices_by_params API call used for BASIC device discovery."
  display_name = "Device Discovery Query Page Duration"
  metric_id    = "metric-sfm.cisco.cc.get_network_devices_by_params.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Query Pagination Offset"
      key          = "offset"
    }
    dimension {
      display_name = "Query Page Size"
      key          = "limit"
    }
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
