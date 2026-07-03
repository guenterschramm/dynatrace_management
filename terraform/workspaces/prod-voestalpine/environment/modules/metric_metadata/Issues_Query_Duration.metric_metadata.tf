resource "dynatrace_metric_metadata" "Issues_Query_Duration" {
  description  = "Duration of the issues API call used to collect Catalyst Center issues data."
  display_name = "Issues Query Duration"
  metric_id    = "metric-sfm.cisco.cc.issues.duration"
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
  }
}
