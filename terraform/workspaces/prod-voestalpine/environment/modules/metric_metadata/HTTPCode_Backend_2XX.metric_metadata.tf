resource "dynatrace_metric_metadata" "HTTPCode_Backend_2XX" {
  display_name = "HTTPCode_Backend_2XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_Backend_2XX.By.LoadBalancerName"
  unit         = "Count"
}
