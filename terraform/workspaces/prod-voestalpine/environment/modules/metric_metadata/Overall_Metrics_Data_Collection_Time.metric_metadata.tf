resource "dynatrace_metric_metadata" "Overall_Metrics_Data_Collection_Time" {
  description  = "Total duration of all Statistics Data Queries to collect data reported as metrics (excluding Discovery Data Queries for retrieving entity attributes)"
  display_name = "Overall Metrics Data Collection Time"
  metric_id    = "metric-sfm.cisco.cc.monitor.run.duration"
  unit         = "Seconds"
  dimensions {
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
