resource "dynatrace_metric_metadata" "CPU_usage_3" {
  description  = "Extensions engine CPU usage"
  display_name = "CPU usage"
  metric_id    = "metric-func:sfm_extension_cpu_usage"
  unit         = "Percent"
  dimensions {
    dimension {
      display_name = "Configuration ID"
      key          = "dt.extension.config.id"
    }
    dimension {
      display_name = "Extension name"
      key          = "dt.extension.name"
    }
  }
}
