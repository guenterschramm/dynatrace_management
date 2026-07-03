resource "dynatrace_metric_metadata" "Device_Count_Query_Errors" {
  description  = "Number of errors during get_devices_by_query_count API call."
  display_name = "Device Count Query Errors"
  metric_id    = "metric-sfm.cisco.cc.get_devices_by_query_count.error"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Error Type"
      key          = "type"
    }
    dimension {
      display_name = "Response Status Code"
      key          = "error_status"
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
