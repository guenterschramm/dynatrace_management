resource "dynatrace_metric_metadata" "Interface_Discovery_Count_Query_Duration" {
  description  = "Duration of the get_intent_api_interfaces_count API call used to determine interface count during Intent API discovery."
  display_name = "Interface Discovery Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_intent_api_interfaces_count.duration"
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
