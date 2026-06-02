resource "dynatrace_metric_metadata" "EBSWriteOps" {
  display_name = "EBSWriteOps"
  metric_id    = "metric-cloud.aws.ec2.EBSWriteOps.By.InstanceId"
  unit         = "Count"
}
