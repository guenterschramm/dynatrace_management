resource "dynatrace_metric_metadata" "Event_Notifications_Query_Duration" {
  description  = "Duration of the events API call used to collect Catalyst Center event notifications data."
  display_name = "Event Notifications Query Duration"
  metric_id    = "metric-sfm.cisco.cc.events.duration"
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
