resource "dynatrace_metric_metadata" "Sites_Count_Query_Duration" {
  description  = "Duration of the query sites.get_site_count, used to retrieve number of sites"
  display_name = "Sites Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.sites.get_site_count.duration"
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
