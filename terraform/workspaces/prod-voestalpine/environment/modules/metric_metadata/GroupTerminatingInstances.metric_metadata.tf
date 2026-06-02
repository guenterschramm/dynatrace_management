resource "dynatrace_metric_metadata" "GroupTerminatingInstances" {
  display_name = "GroupTerminatingInstances"
  metric_id    = "metric-cloud.aws.autoscaling.GroupTerminatingInstances.By.AutoScalingGroupName"
  unit         = "Count"
}
