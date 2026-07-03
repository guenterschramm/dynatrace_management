resource "dynatrace_metric_metadata" "Group_Records_Fetched" {
  description  = "Total number of raw device or interface records fetched from the API for this reporting configuration group."
  display_name = "Group Records Fetched"
  metric_id    = "metric-sfm.cisco.cc.group.records_fetched.gauge"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Entity Type"
      key          = "entity_type"
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
