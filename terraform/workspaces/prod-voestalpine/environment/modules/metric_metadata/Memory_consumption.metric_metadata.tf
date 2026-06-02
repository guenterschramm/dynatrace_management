resource "dynatrace_metric_metadata" "Memory_consumption" {
  description  = "Extensions engine memory consumption"
  display_name = "Memory consumption"
  metric_id    = "metric-func:sfm_extension_memory_consumption"
  unit         = "MegaByte"
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
