resource "dynatrace_metric_metadata" "Site_Discovery_Data_Query_Errors" {
  description  = "Number of errors that occurred during the most recent site discovery run of the paged queries sites.get_site, used to discover sites and collect their attributes."
  display_name = "Site Discovery Data Query Errors"
  metric_id    = "metric-sfm.cisco.cc.sites.get_site.error"
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
