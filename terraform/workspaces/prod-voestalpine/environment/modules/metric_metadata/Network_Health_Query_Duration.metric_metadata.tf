resource "dynatrace_metric_metadata" "Network_Health_Query_Duration" {
  description  = "Duration of the get_network_health API call used to collect overall network health scores."
  display_name = "Network Health Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_network_health.duration"
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
