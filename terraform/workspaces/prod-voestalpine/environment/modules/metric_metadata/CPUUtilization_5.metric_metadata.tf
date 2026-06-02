resource "dynatrace_metric_metadata" "CPUUtilization_5" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.ec2.CPUUtilization.By.AutoScalingGroupName.InstanceId"
  unit         = "Percent"
}
