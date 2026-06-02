resource "dynatrace_metric_metadata" "ThrottledRequestCount" {
  display_name = "ThrottledRequestCount"
  metric_id    = "metric-cloud.aws.dax.ThrottledRequestCount.By.ClusterId"
  unit         = "Count"
}
