resource "dynatrace_metric_metadata" "_invalid_Value" {
  metric_id = "metric-xecm_corp.loglevels.counter"
  unit      = "Unspecified"
  metric_properties {
    latency    = 5
    value_type = "unknown"
  }
}
