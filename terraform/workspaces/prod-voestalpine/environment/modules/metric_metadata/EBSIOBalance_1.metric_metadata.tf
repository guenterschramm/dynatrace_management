resource "dynatrace_metric_metadata" "EBSIOBalance_1" {
  display_name = "EBSIOBalance%"
  metric_id    = "metric-cloud.aws.ec2.EBSIOBalance_percentage.By.AutoScalingGroupName.InstanceId"
  unit         = "Percent"
}
