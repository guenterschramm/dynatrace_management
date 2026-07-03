resource "dynatrace_metric_metadata" "Site_Query_Page_Duration" {
  description  = "Duration of a single paginated get_sites API call used to collect site data."
  display_name = "Site Query Page Duration"
  metric_id    = "metric-sfm.cisco.cc.get_sites.duration"
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
