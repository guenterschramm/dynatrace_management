resource "dynatrace_metric_metadata" "Latency_4" {
  display_name = "Latency"
  metric_id    = "metric-cloud.aws.elb.Latency.By.LoadBalancerName"
  unit         = "Seconds"
}
