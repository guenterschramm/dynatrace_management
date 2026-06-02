resource "dynatrace_metric_metadata" "DiskWriteOps_1" {
  display_name = "DiskWriteOps"
  metric_id    = "metric-cloud.aws.ec2.DiskWriteOps.By.AutoScalingGroupName.InstanceId"
  unit         = "Count"
}
