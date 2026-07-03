resource "dynatrace_metric_metadata" "Network_Health_Query_Errors" {
  description  = "Number of errors during get_network_health API call."
  display_name = "Network Health Query Errors"
  metric_id    = "metric-sfm.cisco.cc.get_network_health.error"
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
