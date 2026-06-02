resource "dynatrace_metric_metadata" "RequestCount_1" {
  display_name = "RequestCount"
  metric_id    = "metric-cloud.aws.applicationelb.RequestCount.By.LoadBalancer"
  unit         = "Count"
}
