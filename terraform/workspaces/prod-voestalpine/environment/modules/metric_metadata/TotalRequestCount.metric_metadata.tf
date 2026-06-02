resource "dynatrace_metric_metadata" "TotalRequestCount" {
  display_name = "TotalRequestCount"
  metric_id    = "metric-cloud.aws.dax.TotalRequestCount.By.ClusterId"
  unit         = "Count"
}
