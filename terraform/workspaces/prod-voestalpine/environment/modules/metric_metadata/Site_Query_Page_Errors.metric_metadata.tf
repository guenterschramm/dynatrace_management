resource "dynatrace_metric_metadata" "Site_Query_Page_Errors" {
  description  = "Number of errors during a paginated get_sites API call."
  display_name = "Site Query Page Errors"
  metric_id    = "metric-sfm.cisco.cc.get_sites.error"
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
