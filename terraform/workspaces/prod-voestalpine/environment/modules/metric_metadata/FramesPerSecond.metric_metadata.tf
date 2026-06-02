resource "dynatrace_metric_metadata" "FramesPerSecond" {
  display_name = "FramesPerSecond"
  metric_id    = "metric-cloud.aws.appstreams.FramesPerSecond.By.Fleet"
  unit         = "Count"
}
