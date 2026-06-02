resource "dynatrace_metric_metadata" "Site_Health_Summaries_Statistics_Data_Query_Errors" {
  description  = "Number of errors that occurred during the most recent data collection for the paged query sites.read_list_of_site_health_summaries, used to collect site health summaries metrics"
  display_name = "Site Health Summaries Statistics Data Query Errors"
  metric_id    = "metric-sfm.cisco.cc.sites.read_list_of_site_health_summaries.error"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Site Type Parameter"
      key          = "site_type"
    }
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
