resource "dynatrace_metric_metadata" "GroupInServiceInstances" {
  display_name = "GroupInServiceInstances"
  metric_id    = "metric-cloud.aws.autoscaling.GroupInServiceInstances.By.AutoScalingGroupName"
  unit         = "Count"
}
