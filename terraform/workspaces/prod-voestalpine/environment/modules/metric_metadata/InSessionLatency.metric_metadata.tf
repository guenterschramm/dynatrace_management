resource "dynatrace_metric_metadata" "InSessionLatency" {
  display_name = "InSessionLatency"
  metric_id    = "metric-cloud.aws.appstreams.InSessionLatency.By.Fleet"
  unit         = "Milliseconds"
}
