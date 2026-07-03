resource "dynatrace_metric_metadata" "Site_Health_Summaries_Query_Errors" {
  description  = "Number of errors during get_site_health_summaries API call."
  display_name = "Site Health Summaries Query Errors"
  metric_id    = "metric-sfm.cisco.cc.get_site_health_summaries.error"
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
