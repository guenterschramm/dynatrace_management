resource "dynatrace_metric_metadata" "Devices_Count_Query_Errors" {
  description  = "Number of errors that occurred during the most recent data collection or device discovery run for the query devices.get_device_count, used to retrieve the number of devices."
  display_name = "Devices Count Query Errors"
  metric_id    = "metric-sfm.cisco.cc.devices.get_device_count.error"
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
