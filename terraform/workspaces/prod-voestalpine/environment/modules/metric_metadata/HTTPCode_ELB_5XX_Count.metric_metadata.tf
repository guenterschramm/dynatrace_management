resource "dynatrace_metric_metadata" "HTTPCode_ELB_5XX_Count" {
  display_name = "HTTPCode_ELB_5XX_Count"
  metric_id    = "metric-cloud.aws.applicationelb.HTTPCode_ELB_5XX_Count.By.LoadBalancer"
  unit         = "Count"
}
