resource "dynatrace_metric_metadata" "TargetResponseTime_1" {
  display_name = "TargetResponseTime"
  metric_id    = "metric-cloud.aws.applicationelb.TargetResponseTime.By.LoadBalancer.TargetGroup"
  unit         = "Seconds"
}
