resource "dynatrace_metric_metadata" "Site_Health_Summaries_Query_Duration" {
  description  = "Duration of the get_site_health_summaries API call used to collect site-level health summary data."
  display_name = "Site Health Summaries Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_site_health_summaries.duration"
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
