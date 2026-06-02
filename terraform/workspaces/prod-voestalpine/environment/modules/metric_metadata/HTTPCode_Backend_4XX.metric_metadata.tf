resource "dynatrace_metric_metadata" "HTTPCode_Backend_4XX" {
  display_name = "HTTPCode_Backend_4XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_Backend_4XX.By.LoadBalancerName"
  unit         = "Count"
}
