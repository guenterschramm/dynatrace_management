resource "dynatrace_metric_metadata" "HealthyHostCount_2" {
  display_name = "HealthyHostCount"
  metric_id    = "metric-cloud.aws.applicationelb.HealthyHostCount.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
