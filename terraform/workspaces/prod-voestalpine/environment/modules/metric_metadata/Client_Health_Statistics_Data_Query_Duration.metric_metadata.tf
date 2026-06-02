resource "dynatrace_metric_metadata" "Client_Health_Statistics_Data_Query_Duration" {
  description  = "Duration of the query clients.get_overall_client_health, used to collect overall clients health metrics"
  display_name = "Client Health Statistics Data Query Duration"
  metric_id    = "metric-sfm.cisco.cc.clients.get_overall_client_health.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Issue Status Parameter"
      key          = "issue_status"
    }
    dimension {
      display_name = "Configuration Name (Center)"
      key          = "config_name"
    }
    dimension {
      display_name = "Center Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Data Collection Frequency"
      key          = "frequency"
    }
    dimension {
      display_name = "Endpoint IP"
      key          = "endpoint_ip"
    }
    dimension {
      display_name = "Center (Configuration Name)"
      key          = "center"
    }
  }
}
