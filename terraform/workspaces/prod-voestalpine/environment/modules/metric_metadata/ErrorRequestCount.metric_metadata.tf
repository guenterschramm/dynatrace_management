resource "dynatrace_metric_metadata" "ErrorRequestCount" {
  display_name = "ErrorRequestCount"
  metric_id    = "metric-cloud.aws.dax.ErrorRequestCount.By.ClusterId"
  unit         = "Count"
}
