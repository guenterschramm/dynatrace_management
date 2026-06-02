resource "dynatrace_metric_metadata" "FailedRequestCount" {
  display_name = "FailedRequestCount"
  metric_id    = "metric-cloud.aws.dax.FailedRequestCount.By.ClusterId"
  unit         = "Count"
}
