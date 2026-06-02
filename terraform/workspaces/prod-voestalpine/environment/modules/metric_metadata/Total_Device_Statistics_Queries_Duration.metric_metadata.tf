resource "dynatrace_metric_metadata" "Total_Device_Statistics_Queries_Duration" {
  description  = "Total duration of all paged queries, used to collect device metrics."
  display_name = "Total Device Statistics Queries Duration"
  metric_id    = "metric-sfm.cisco.cc.endpoint.get_device_statistics_dict.duration"
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
