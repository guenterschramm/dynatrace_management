resource "dynatrace_metric_metadata" "DiskWriteBytes_1" {
  display_name = "DiskWriteBytes"
  metric_id    = "metric-cloud.aws.ec2.DiskWriteBytes.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
