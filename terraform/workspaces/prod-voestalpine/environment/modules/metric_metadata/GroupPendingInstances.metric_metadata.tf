resource "dynatrace_metric_metadata" "GroupPendingInstances" {
  display_name = "GroupPendingInstances"
  metric_id    = "metric-cloud.aws.autoscaling.GroupPendingInstances.By.AutoScalingGroupName"
  unit         = "Count"
}
