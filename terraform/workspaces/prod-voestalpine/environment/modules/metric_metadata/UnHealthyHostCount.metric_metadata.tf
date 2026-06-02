resource "dynatrace_metric_metadata" "UnHealthyHostCount" {
  display_name = "UnHealthyHostCount"
  metric_id    = "metric-cloud.aws.elb.UnHealthyHostCount.By.LoadBalancerName"
  unit         = "Count"
}
