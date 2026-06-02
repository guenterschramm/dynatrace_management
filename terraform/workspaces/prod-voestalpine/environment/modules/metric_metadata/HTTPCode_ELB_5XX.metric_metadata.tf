resource "dynatrace_metric_metadata" "HTTPCode_ELB_5XX" {
  display_name = "HTTPCode_ELB_5XX"
  metric_id    = "metric-cloud.aws.elb.HTTPCode_ELB_5XX.By.LoadBalancerName"
  unit         = "Count"
}
