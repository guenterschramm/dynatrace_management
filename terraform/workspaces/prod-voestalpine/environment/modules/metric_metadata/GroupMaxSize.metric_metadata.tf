resource "dynatrace_metric_metadata" "GroupMaxSize" {
  display_name = "GroupMaxSize"
  metric_id    = "metric-cloud.aws.autoscaling.GroupMaxSize.By.AutoScalingGroupName"
  unit         = "Count"
}
