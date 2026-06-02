resource "dynatrace_metric_metadata" "BackendConnectionErrors" {
  display_name = "BackendConnectionErrors"
  metric_id    = "metric-cloud.aws.elb.BackendConnectionErrors.By.LoadBalancerName"
  unit         = "Count"
}
