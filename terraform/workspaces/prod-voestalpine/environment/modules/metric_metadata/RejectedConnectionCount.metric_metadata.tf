resource "dynatrace_metric_metadata" "RejectedConnectionCount" {
  display_name = "RejectedConnectionCount"
  metric_id    = "metric-cloud.aws.applicationelb.RejectedConnectionCount.By.LoadBalancer"
  unit         = "Count"
}
