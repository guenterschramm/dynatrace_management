resource "dynatrace_metric_metadata" "Interface_Count_Query_Duration" {
  description  = "Duration of the get_interfaces_by_query_count API call used to determine total interface count before paginated collection."
  display_name = "Interface Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_interfaces_by_query_count.duration"
  unit         = "Seconds"
  dimensions {
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
