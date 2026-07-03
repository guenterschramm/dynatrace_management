resource "dynatrace_metric_metadata" "Interface_Discovery_Query_Page_Duration" {
  description  = "Duration of a single paginated get_intent_api_interfaces API call used for Intent API interface discovery."
  display_name = "Interface Discovery Query Page Duration"
  metric_id    = "metric-sfm.cisco.cc.get_intent_api_interfaces.duration"
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
