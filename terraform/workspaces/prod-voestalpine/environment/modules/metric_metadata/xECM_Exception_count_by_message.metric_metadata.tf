resource "dynatrace_metric_metadata" "xECM_Exception_count_by_message" {
  display_name = "xECM Exception count by message"
  metric_id    = "metric-calc:service.xecmexceptioncountbymessage"
  unit         = "Count"
  metric_properties {
    latency    = 5
    value_type = "unknown"
  }
}
