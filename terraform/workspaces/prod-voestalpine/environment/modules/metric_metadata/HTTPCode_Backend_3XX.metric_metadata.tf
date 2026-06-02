resource "dynatrace_metric_metadata" "HTTPCode_Backend_3XX" {
  display_name = "HTTPCode_Backend_3XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_Backend_3XX.By.LoadBalancerName"
  unit         = "Count"
}
