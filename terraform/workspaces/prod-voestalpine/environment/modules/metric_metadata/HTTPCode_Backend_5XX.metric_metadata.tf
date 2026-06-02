resource "dynatrace_metric_metadata" "HTTPCode_Backend_5XX" {
  display_name = "HTTPCode_Backend_5XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_Backend_5XX.By.LoadBalancerName"
  unit         = "Count"
}
