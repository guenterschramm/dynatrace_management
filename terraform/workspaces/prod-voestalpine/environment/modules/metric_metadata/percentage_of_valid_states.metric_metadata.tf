resource "dynatrace_metric_metadata" "percentage_of_valid_states" {
  description  = "pseudo sfm metric"
  display_name = "percentage of valid states"
  metric_id    = "metric-func:sfm_extension_percent_status"
  unit         = "Percent"
  dimensions {
    dimension {
      display_name = "Configuration id"
      key          = "dt.extension.config.id"
    }
    dimension {
      display_name = "Extension name"
      key          = "dt.extension.name"
    }
  }
}
