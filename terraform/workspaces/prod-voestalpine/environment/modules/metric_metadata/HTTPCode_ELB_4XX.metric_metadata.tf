resource "dynatrace_metric_metadata" "HTTPCode_ELB_4XX" {
  display_name = "HTTPCode_ELB_4XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_ELB_4XX.By.LoadBalancerName"
  unit         = "Count"
}
