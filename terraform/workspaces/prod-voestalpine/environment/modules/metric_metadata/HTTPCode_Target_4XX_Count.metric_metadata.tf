resource "dynatrace_metric_metadata" "HTTPCode_Target_4XX_Count" {
  display_name = "HTTPCode_Target_4XX_Count"
  metric_id    = "metric-cloud.aws.applicationelb.HTTPCode_Target_4XX_Count.By.LoadBalancer.TargetGroup"
  unit         = "Count"
}
