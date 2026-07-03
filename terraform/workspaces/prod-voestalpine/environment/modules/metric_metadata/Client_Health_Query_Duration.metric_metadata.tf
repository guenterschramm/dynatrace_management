resource "dynatrace_metric_metadata" "Client_Health_Query_Duration" {
  description  = "Duration of the get_client_health API call used to collect client health scores."
  display_name = "Client Health Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_client_health.duration"
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
