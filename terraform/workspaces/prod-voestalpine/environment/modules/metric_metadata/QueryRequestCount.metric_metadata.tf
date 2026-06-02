resource "dynatrace_metric_metadata" "QueryRequestCount" {
  display_name = "QueryRequestCount"
  metric_id    = "metric-cloud.aws.dax.QueryRequestCount.By.ClusterId"
  unit         = "Count"
}
