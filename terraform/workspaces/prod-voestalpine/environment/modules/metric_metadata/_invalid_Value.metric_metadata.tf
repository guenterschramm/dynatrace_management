resource "dynatrace_metric_metadata" "_invalid_Value" {
  metric_id = "metric-log.FNT_Error"
  unit      = "Unspecified"
  metric_properties {
    latency    = 5
    value_type = "unknown"
  }
}
