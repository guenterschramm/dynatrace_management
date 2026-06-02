resource "dynatrace_metric_metadata" "EBSWriteBytes" {
  display_name = "EBSWriteBytes"
  metric_id    = "metric-cloud.aws.ec2.EBSWriteBytes.By.InstanceId"
  unit         = "Bytes"
}
