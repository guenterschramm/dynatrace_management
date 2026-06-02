resource "dynatrace_metric_metadata" "DiskReadBytes_1" {
  display_name = "DiskReadBytes"
  metric_id    = "metric-cloud.aws.ec2.DiskReadBytes.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
