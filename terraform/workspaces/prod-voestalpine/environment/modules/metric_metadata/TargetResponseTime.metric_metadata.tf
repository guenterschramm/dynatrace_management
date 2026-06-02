resource "dynatrace_metric_metadata" "TargetResponseTime" {
  display_name = "TargetResponseTime"
  metric_id    = "metric-cloud.aws.applicationelb.TargetResponseTime.By.LoadBalancer"
  unit         = "Seconds"
}
