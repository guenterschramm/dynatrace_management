resource "dynatrace_metric_metadata" "RequestCount_2" {
  display_name = "RequestCount"
  metric_id    = "metric-cloud.aws.applicationelb.RequestCount.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
