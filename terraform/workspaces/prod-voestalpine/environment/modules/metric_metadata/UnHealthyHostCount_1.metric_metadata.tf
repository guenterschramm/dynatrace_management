resource "dynatrace_metric_metadata" "UnHealthyHostCount_1" {
  display_name = "UnHealthyHostCount"
  metric_id    = "metric-cloud.aws.networkelb.UnHealthyHostCount.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
