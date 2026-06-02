resource "dynatrace_metric_metadata" "Interface_Discovery_Data_Query_Errors" {
  description  = "Number of errors that occurred during the most recent interface discovery run of the paged queries devices.get_all_interfaces, used to discover interfaces and collect their attributes."
  display_name = "Interface Discovery Data Query Errors"
  metric_id    = "metric-sfm.cisco.cc.devices.get_all_interfaces.error"
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
      display_name = "Interfaces Discovery Frequency"
      key          = "discovery_frequency"
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
