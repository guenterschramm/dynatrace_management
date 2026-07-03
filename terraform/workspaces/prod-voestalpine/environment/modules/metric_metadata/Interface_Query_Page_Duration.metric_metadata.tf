resource "dynatrace_metric_metadata" "Interface_Query_Page_Duration" {
  description  = "Duration of a single paginated get_interfaces_by_query API call used to collect interface data."
  display_name = "Interface Query Page Duration"
  metric_id    = "metric-sfm.cisco.cc.get_interfaces_by_query.duration"
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
    dimension {
      display_name = "Reporting Configuration Index"
      key          = "config_index"
    }
    dimension {
      display_name = "Reporting Strategy"
      key          = "reporting_strategy"
    }
    dimension {
      display_name = "Reporting Frequency (Minutes)"
      key          = "reporting_frequency_minutes"
    }
  }
}
