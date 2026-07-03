resource "dynatrace_metric_metadata" "Group_Overlap_Devices" {
  description  = "Number of devices matching this group filter that are reported by a different reporting configuration. Only emitted when OVERLAP strategy is active and overlap count is greater than zero."
  display_name = "Group Overlap Devices"
  metric_id    = "metric-sfm.cisco.cc.group.overlap_devices.gauge"
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
