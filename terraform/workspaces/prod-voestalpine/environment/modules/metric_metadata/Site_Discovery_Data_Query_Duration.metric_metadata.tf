resource "dynatrace_metric_metadata" "Site_Discovery_Data_Query_Duration" {
  description  = "Duration of the paged query sites.get_site, used to discover sites and collect their attributes."
  display_name = "Site Discovery Data Query Duration"
  metric_id    = "metric-sfm.cisco.cc.sites.get_site.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Query Pagination Offset"
      key          = "offset"
    }
    dimension {
      display_name = "Query Page Size"
      key          = "page_size"
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
      display_name = "Sites Discovery Frequency"
      key          = "discovery_frequency"
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
