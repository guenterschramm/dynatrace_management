resource "dynatrace_metric_metadata" "Rejected_Statistics_Data_Queries" {
  description  = "Number of Statistics Data Queries not executed during the most recent data collection to prevent overlap. Refers to Statistics Data Queries used to collect metric data."
  display_name = "Rejected Statistics Data Queries"
  metric_id    = "metric-sfm.cisco.cc.collection.timeout"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Name of the method with rejected query"
      key          = "method_name"
    }
    dimension {
      display_name = "Type of rejected Statistics Data Query"
      key          = "collection_type"
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
      display_name = "Site Type Query Parameter (Refers to Site Statistics Data Query)"
      key          = "site_type"
    }
    dimension {
      display_name = "Interface View Query Parameter (Refers to Interface Statistics Data Query)"
      key          = "view"
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
