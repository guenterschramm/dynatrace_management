resource "dynatrace_metric_metadata" "FailedRequestCount_1" {
  display_name = "FailedRequestCount"
  metric_id    = "metric-cloud.aws.dax.FailedRequestCount.By.ClusterId.NodeId"
  unit         = "Count"
}
