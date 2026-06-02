resource "dynatrace_metric_metadata" "HealthyHostCount" {
  display_name = "HealthyHostCount"
  metric_id    = "metric-cloud.aws.elb.HealthyHostCount.By.LoadBalancerName"
  unit         = "Count"
}
