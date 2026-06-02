resource "dynatrace_metric_metadata" "GroupDesiredCapacity" {
  display_name = "GroupDesiredCapacity"
  metric_id    = "metric-cloud.aws.autoscaling.GroupDesiredCapacity.By.AutoScalingGroupName"
  unit         = "Count"
}
