resource "dynatrace_metric_metadata" "UnhealthyHostCount_2" {
  display_name = "UnhealthyHostCount"
  metric_id    = "metric-cloud.aws.applicationelb.UnhealthyHostCount.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
