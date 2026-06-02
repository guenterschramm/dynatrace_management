resource "dynatrace_metric_metadata" "SpilloverCount" {
  display_name = "SpilloverCount"
  metric_id    = "metric-cloud.aws.elb.SpilloverCount.By.LoadBalancerName"
  unit         = "Count"
}
