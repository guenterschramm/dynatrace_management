resource "dynatrace_metric_metadata" "EBSReadBytes_1" {
  display_name = "EBSReadBytes"
  metric_id    = "metric-cloud.aws.ec2.EBSReadBytes.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
