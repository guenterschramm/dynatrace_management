resource "dynatrace_metric_metadata" "RequestCount" {
  display_name = "RequestCount"
  metric_id    = "metric-cloud.aws.elb.RequestCount.By.LoadBalancerName"
  unit         = "Count"
}
