resource "dynatrace_metric_metadata" "Site_Count_Query_Errors" {
  description  = "Number of errors during get_sites_count API call."
  display_name = "Site Count Query Errors"
  metric_id    = "metric-sfm.cisco.cc.get_sites_count.error"
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
