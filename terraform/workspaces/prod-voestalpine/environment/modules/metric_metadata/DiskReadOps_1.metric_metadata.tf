resource "dynatrace_metric_metadata" "DiskReadOps_1" {
  display_name = "DiskReadOps"
  metric_id    = "metric-cloud.aws.ec2.DiskReadOps.By.AutoScalingGroupName.InstanceId"
  unit         = "Count"
}
