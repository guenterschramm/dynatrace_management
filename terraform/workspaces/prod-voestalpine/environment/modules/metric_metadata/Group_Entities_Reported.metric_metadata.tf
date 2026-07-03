resource "dynatrace_metric_metadata" "Group_Entities_Reported" {
  description  = "Number of entities (devices or interfaces) reported to Dynatrace for this reporting configuration group."
  display_name = "Group Entities Reported"
  metric_id    = "metric-sfm.cisco.cc.group.entities_reported.gauge"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Entity Type"
      key          = "entity_type"
    }
    dimension {
      display_name = "Configuration Name"
      key          = "config_name"
    }
    dimension {
      display_name = "Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Reporting Configuration Index"
      key          = "config_index"
    }
    dimension {
      display_name = "Reporting Strategy"
      key          = "reporting_strategy"
    }
    dimension {
      display_name = "Reporting Frequency (Minutes)"
      key          = "reporting_frequency_minutes"
    }
  }
}
