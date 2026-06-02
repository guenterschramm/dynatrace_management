resource "dynatrace_metric_metadata" "ActiveConnectionCount" {
  display_name = "ActiveConnectionCount"
  metric_id    = "metric-cloud.aws.applicationelb.ActiveConnectionCount.By.LoadBalancer"
  unit         = "Count"
}
