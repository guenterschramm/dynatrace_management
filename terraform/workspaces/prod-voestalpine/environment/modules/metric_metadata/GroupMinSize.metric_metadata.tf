resource "dynatrace_metric_metadata" "GroupMinSize" {
  display_name = "GroupMinSize"
  metric_id    = "metric-cloud.aws.autoscaling.GroupMinSize.By.AutoScalingGroupName"
  unit         = "Count"
}
