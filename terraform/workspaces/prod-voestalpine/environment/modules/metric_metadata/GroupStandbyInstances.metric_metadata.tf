resource "dynatrace_metric_metadata" "GroupStandbyInstances" {
  display_name = "GroupStandbyInstances"
  metric_id    = "metric-cloud.aws.autoscaling.GroupStandbyInstances.By.AutoScalingGroupName"
  unit         = "Count"
}
