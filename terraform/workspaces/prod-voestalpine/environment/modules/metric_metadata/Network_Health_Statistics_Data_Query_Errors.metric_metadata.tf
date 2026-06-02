resource "dynatrace_metric_metadata" "Network_Health_Statistics_Data_Query_Errors" {
  description  = "Number of errors that occurred during the most recent data collection for the query topology.get_overall_network_health, used to collect overall network health metrics"
  display_name = "Network Health Statistics Data Query Errors"
  metric_id    = "metric-sfm.cisco.cc.topology.get_overall_network_health.error"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Response Status Code"
      key          = "error_status"
    }
    dimension {
      display_name = "Error type"
      key          = "type"
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
