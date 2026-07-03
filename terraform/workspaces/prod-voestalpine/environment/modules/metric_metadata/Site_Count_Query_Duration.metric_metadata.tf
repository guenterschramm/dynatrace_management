resource "dynatrace_metric_metadata" "Site_Count_Query_Duration" {
  description  = "Duration of the get_sites_count API call used to determine total site count before paginated collection."
  display_name = "Site Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_sites_count.duration"
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
