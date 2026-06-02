resource "dynatrace_metric_metadata" "HealthyHostCount_1" {
  display_name = "HealthyHostCount"
  metric_id    = "metric-cloud.aws.networkelb.HealthyHostCount.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
