resource "dynatrace_metric_metadata" "Metrics_Data_Collection_Error" {
  description  = "Indicates whether an error occurred during the most recent data collection."
  display_name = "Metrics Data Collection Error"
  metric_id    = "metric-sfm.cisco.cc.monitor.run.error"
  unit         = "Count"
  dimensions {
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
