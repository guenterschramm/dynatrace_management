resource "dynatrace_metric_metadata" "Device_Statistics_Data_Query_Errors" {
  description  = "Number of errors that occurred during the most recent data collection for the paged query devices.devices, used to collect device metrics."
  display_name = "Device Statistics Data Query Errors"
  metric_id    = "metric-sfm.cisco.cc.devices.devices.error"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Response Status Code"
      key          = "error_status"
    }
    dimension {
      display_name = "Error type"
      key          = "type"
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
