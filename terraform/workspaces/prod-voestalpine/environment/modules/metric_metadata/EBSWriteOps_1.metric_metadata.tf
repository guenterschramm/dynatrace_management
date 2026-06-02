resource "dynatrace_metric_metadata" "EBSWriteOps_1" {
  display_name = "EBSWriteOps"
  metric_id    = "metric-cloud.aws.ec2.EBSWriteOps.By.AutoScalingGroupName.InstanceId"
  unit         = "Count"
}
