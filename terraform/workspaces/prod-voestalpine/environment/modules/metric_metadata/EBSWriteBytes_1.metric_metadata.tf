resource "dynatrace_metric_metadata" "EBSWriteBytes_1" {
  display_name = "EBSWriteBytes"
  metric_id    = "metric-cloud.aws.ec2.EBSWriteBytes.By.AutoScalingGroupName.InstanceId"
  unit         = "Bytes"
}
