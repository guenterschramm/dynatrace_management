resource "dynatrace_metric_metadata" "EBSReadOps_1" {
  display_name = "EBSReadOps"
  metric_id    = "metric-cloud.aws.ec2.EBSReadOps.By.AutoScalingGroupName.InstanceId"
  unit         = "Count"
}
